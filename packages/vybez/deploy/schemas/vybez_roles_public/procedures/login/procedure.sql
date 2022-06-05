-- Deploy: schemas/vybez_roles_public/procedures/login/procedure to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_encrypted/schema
-- requires: schemas/vybez_roles_public/schema
-- requires: schemas/vybez_public/tables/emails/table
-- requires: schemas/vybez_roles_public/tables/audit_logs/table
-- requires: schemas/vybez_roles_private/tables/api_tokens/table
-- requires: schemas/vybez_simple_secrets/tables/user_secrets/table
-- requires: schemas/vybez_memberships_public/tables/app_memberships/table

BEGIN;

CREATE FUNCTION "vybez_roles_public".login (
  email text,
  password text,
  remember_me boolean DEFAULT FALSE
)
  RETURNS "vybez_roles_private".api_tokens
  AS $$
DECLARE
  v_token "vybez_roles_private".api_tokens;
  v_email "vybez_public".emails;
  v_sign_in_attempt_window_duration interval = interval '6 hours';
  v_sign_in_max_attempts int = 10;
  v_user_is_verified boolean default false;
  v_user_is_disabled boolean default false;
  v_user_is_banned boolean default false;
  first_failed_password_attempt timestamptz;
  password_attempts int;
BEGIN
  SELECT
    user_emails_alias.*
  FROM
    "vybez_public".emails AS user_emails_alias
  WHERE
    user_emails_alias.email = login.email::email INTO v_email;
  
  IF (NOT FOUND) THEN
    RETURN NULL;
  END IF;
  first_failed_password_attempt = "vybez_simple_secrets".get(v_email.owner_id, 'first_failed_password_attempt');
  password_attempts = "vybez_simple_secrets".get(v_email.owner_id, 'password_attempts');
  IF (
    first_failed_password_attempt IS NOT NULL
      AND
    first_failed_password_attempt > NOW() - v_sign_in_attempt_window_duration
      AND
    password_attempts >= v_sign_in_max_attempts
  ) THEN
    RAISE EXCEPTION 'ACCOUNT_LOCKED_EXCEED_ATTEMPTS';
  END IF;
  SELECT  
      is_verified,
      is_disabled,
      is_banned
    FROM "vybez_memberships_public".app_memberships
    WHERE actor_id = v_email.owner_id
  INTO 
    v_user_is_verified,
    v_user_is_disabled,
    v_user_is_banned;
  IF (v_user_is_disabled IS TRUE OR v_user_is_banned IS TRUE) THEN 
      RAISE EXCEPTION 'ACCOUNT_DISABLED';
  END IF;
  IF ( "vybez_encrypted".verify(v_email.owner_id, 'password_hash', PASSWORD) ) THEN
    PERFORM "vybez_simple_secrets".del(v_email.owner_id,
    ARRAY[
      'password_attempts', 'first_failed_password_attempt'
    ]);
    INSERT INTO "vybez_roles_public".audit_logs 
      (actor_id, event, success)
    VALUES (
      v_email.owner_id,
      'login',
      TRUE
    );
 
    IF (remember_me IS TRUE) THEN 
      INSERT INTO "vybez_roles_private".api_tokens (
        user_id,
        is_verified,
        last_password_verified,
        access_token_expires_at
      )
      VALUES (
        v_email.owner_id,
        v_user_is_verified,
        current_timestamp,
        ( NOW() + '1 year'::interval )
      )
      RETURNING
        * INTO v_token;
    ELSE 
      INSERT INTO "vybez_roles_private".api_tokens (
        user_id,
        is_verified,
        last_password_verified
      )
      VALUES (
        v_email.owner_id,
        v_user_is_verified,
        current_timestamp
      )
      RETURNING
        * INTO v_token;
    END IF;
    RETURN v_token;
  ELSE
   INSERT INTO "vybez_roles_public".audit_logs 
      (actor_id, event, success)
    VALUES (
      v_email.owner_id,
      'login',
      FALSE
    );
    IF (password_attempts IS NULL) THEN
      password_attempts = 0;
    END IF;
    IF (
      first_failed_password_attempt IS NULL
        OR
      first_failed_password_attempt < NOW() - v_sign_in_attempt_window_duration
    ) THEN
      password_attempts = 1;
      first_failed_password_attempt = NOW();
    ELSE 
      password_attempts = password_attempts + 1;
    END IF;
    PERFORM "vybez_simple_secrets".set(v_email.owner_id, 'password_attempts', password_attempts);
    PERFORM "vybez_simple_secrets".set(v_email.owner_id, 'first_failed_password_attempt', first_failed_password_attempt);
    RETURN NULL;
  END IF;
END;
$$
LANGUAGE 'plpgsql'
STRICT
SECURITY DEFINER;
GRANT EXECUTE ON FUNCTION "vybez_roles_public".login TO anonymous;
COMMIT;
