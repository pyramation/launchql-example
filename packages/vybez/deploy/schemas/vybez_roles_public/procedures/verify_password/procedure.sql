-- Deploy: schemas/vybez_roles_public/procedures/verify_password/procedure to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_encrypted/schema
-- requires: schemas/vybez_roles_public/schema
-- requires: schemas/vybez_roles_public/tables/audit_logs/table
-- requires: schemas/vybez_roles_private/tables/api_tokens/table
-- requires: schemas/vybez_simple_secrets/tables/user_secrets/table

BEGIN;

CREATE FUNCTION "vybez_roles_public".verify_password (
  password text
)
  RETURNS "vybez_roles_private".api_tokens
  AS $$
DECLARE
  v_token "vybez_roles_private".api_tokens;
  v_sign_in_attempt_window_duration interval = interval '6 hours';
  v_sign_in_max_attempts int = 10;
  first_failed_password_attempt timestamptz;
  password_attempts int;
  vuser_id uuid;
BEGIN
  vuser_id = jwt_public.current_user_id();
  first_failed_password_attempt = "vybez_simple_secrets".get(vuser_id, 'first_failed_password_attempt');
  password_attempts = "vybez_simple_secrets".get(vuser_id, 'password_attempts');
  IF (
    first_failed_password_attempt IS NOT NULL
      AND
    first_failed_password_attempt > NOW() - v_sign_in_attempt_window_duration
      AND
    password_attempts >= v_sign_in_max_attempts
  ) THEN
    RAISE EXCEPTION 'ACCOUNT_LOCKED_EXCEED_ATTEMPTS';
  END IF;
  IF ( "vybez_encrypted".verify(vuser_id, 'password_hash', PASSWORD) ) THEN
    PERFORM "vybez_simple_secrets".del(vuser_id,
    ARRAY[
      'password_attempts', 'first_failed_password_attempt'
    ]);
    INSERT INTO "vybez_roles_public".audit_logs 
      (actor_id, event, success)
    VALUES (
      vuser_id,
      'verify_password',
      TRUE
    );
 
    UPDATE "vybez_roles_private".api_tokens tkn 
        SET last_password_verified = current_timestamp,
            access_token_expires_at = access_token_expires_at + '30 minutes'::interval
    WHERE tkn.id = jwt_private.current_token_id()
      AND 
        (
            CASE WHEN tkn.uagent IS NULL THEN jwt_public.current_user_agent() IS NULL
            ELSE tkn.uagent = jwt_public.current_user_agent() END
        )
      AND 
        (
            CASE WHEN tkn.origin IS NULL THEN jwt_public.current_origin() IS NULL
            ELSE tkn.origin = jwt_public.current_origin() END
        )
    RETURNING * INTO v_token;
    RETURN v_token;
  ELSE
   INSERT INTO "vybez_roles_public".audit_logs 
      (actor_id, event, success)
    VALUES (
      vuser_id,
      'verify_password',
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
    PERFORM "vybez_simple_secrets".set(vuser_id, 'password_attempts', password_attempts);
    PERFORM "vybez_simple_secrets".set(vuser_id, 'first_failed_password_attempt', first_failed_password_attempt);
    RETURN NULL;
  END IF;
END;
$$
LANGUAGE 'plpgsql'
STRICT
SECURITY DEFINER;
GRANT EXECUTE ON FUNCTION "vybez_roles_public".verify_password TO authenticated;
REVOKE EXECUTE ON FUNCTION "vybez_roles_public".verify_password FROM anonymous;
COMMIT;
