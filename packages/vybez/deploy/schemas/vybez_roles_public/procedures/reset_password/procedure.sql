-- Deploy: schemas/vybez_roles_public/procedures/reset_password/procedure to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_encrypted/schema
-- requires: schemas/vybez_roles_public/schema
-- requires: schemas/vybez_public/tables/users/table
-- requires: schemas/vybez_roles_public/tables/audit_logs/table
-- requires: schemas/vybez_encrypted/tables/user_encrypted_secrets/table
-- requires: schemas/vybez_memberships_public/tables/app_memberships/table

BEGIN;

CREATE FUNCTION "vybez_roles_public".reset_password (role_id uuid, reset_token text, new_password text)
    RETURNS boolean
AS $$
DECLARE
    v_user "vybez_public".users;
    
    v_reset_max_interval interval = interval '3 days';
    v_reset_max_attempts int = 10;
    reset_password_attempts int;
    first_failed_reset_password_attempt timestamptz;
    v_user_is_disabled boolean default false;
    v_user_is_banned boolean default false;
BEGIN
    IF (role_id IS NULL OR reset_token IS NULL OR new_password IS NULL) THEN
        RAISE EXCEPTION 'NULL_VALUES_DISALLOWED';
    END IF;
    SELECT
        u.* INTO v_user
    FROM
        "vybez_public".users as u
    WHERE
        id = role_id;
    IF (NOT FOUND) THEN
      RETURN NULL;
    END IF;
    SELECT  
        is_disabled,
        is_banned
        FROM "vybez_memberships_public".app_memberships
        WHERE actor_id = role_id
    INTO 
        v_user_is_disabled,
        v_user_is_banned;
    IF (v_user_is_disabled IS TRUE OR v_user_is_banned IS TRUE) THEN 
        RAISE EXCEPTION 'ACCOUNT_DISABLED';
    END IF;
    reset_password_attempts = "vybez_simple_secrets".get(v_user.id, 'reset_password_attempts', '0');
    first_failed_reset_password_attempt = "vybez_simple_secrets".get(v_user.id, 'first_failed_reset_password_attempt');
    IF (first_failed_reset_password_attempt IS NOT NULL
      AND NOW() < first_failed_reset_password_attempt + v_reset_max_interval
      AND reset_password_attempts >= v_reset_max_attempts) THEN
        RAISE
        EXCEPTION 'PASSWORD_RESET_LOCKED_EXCEED_ATTEMPTS';
    END IF;
    IF ("vybez_encrypted".verify(v_user.id, 'reset_password_token', reset_token)) THEN
        PERFORM "vybez_encrypted".set
            (v_user.id, 'password_hash', new_password, 'crypt');
        PERFORM "vybez_simple_secrets".del(
            v_user.id,
            ARRAY[
                'password_attempts',
                'first_failed_password_attempt',
                'reset_password_token_generated',
                'reset_password_attempts',
                'first_failed_reset_password_attempt'                
            ]
        );
        PERFORM "vybez_encrypted".del(
            v_user.id,
            'reset_password_token'
        );
        INSERT INTO "vybez_roles_public".audit_logs 
            (actor_id, event, success)
        VALUES (
            v_user.id,
            'reset_password',
            TRUE
        );
        RETURN TRUE;
    ELSE
        INSERT INTO "vybez_roles_public".audit_logs 
            (actor_id, event, success)
        VALUES (
            v_user.id,
            'reset_password',
            FALSE
        );
        IF (
            first_failed_reset_password_attempt IS NULL OR
            first_failed_reset_password_attempt + v_reset_max_interval < NOW() 
        ) THEN
            reset_password_attempts = 1;
            first_failed_reset_password_attempt = NOW();
        ELSE 
            reset_password_attempts = reset_password_attempts + 1;
        END IF;
        PERFORM "vybez_simple_secrets".set(v_user.id, 'reset_password_attempts', reset_password_attempts);
        PERFORM "vybez_simple_secrets".set(v_user.id, 'first_failed_reset_password_attempt', first_failed_reset_password_attempt);
    END IF;
    RETURN FALSE;
END;
$$
LANGUAGE 'plpgsql' VOLATILE
SECURITY DEFINER;
GRANT EXECUTE ON FUNCTION "vybez_roles_public".reset_password to anonymous;
REVOKE EXECUTE ON FUNCTION "vybez_roles_public".reset_password from authenticated;
COMMIT;
