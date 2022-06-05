-- Deploy: schemas/vybez_roles_public/procedures/verify_email/procedure to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_roles_public/schema
-- requires: schemas/vybez_memberships_public/tables/app_memberships/table

BEGIN;

CREATE FUNCTION "vybez_roles_public".verify_email (
  email_id uuid,
  token text
)
  RETURNS boolean
  AS $$
DECLARE
  v_email "vybez_public".emails;
  v_user_id uuid;
  
  v_verification_expires_interval interval = interval '3 days';
  verification_token_name text;
  verification_email_attempts int;
  verification_email_sent_at timestamptz;
  first_failed_verification_email_attempt timestamptz;
BEGIN
  
  SELECT * FROM "vybez_public".emails e
     WHERE e.id = verify_email.email_id
  INTO v_email;
  IF (v_email.is_verified IS TRUE) THEN 
    RETURN TRUE;
  END IF;
  IF ( NOT FOUND ) THEN
    RETURN FALSE;
  END IF;
  v_user_id = v_email.owner_id;
  verification_email_sent_at = "vybez_simple_secrets".get(v_user_id, 'verification_email_sent_at');
  IF (verification_email_sent_at IS NOT NULL AND 
    verification_email_sent_at + v_verification_expires_interval < NOW() 
  ) THEN 
    
    PERFORM "vybez_simple_secrets".del(v_user_id, ARRAY[
        'verification_email_sent_at',
        'verification_email_attempts',
        'first_failed_verification_email_attempt'
    ]);
    PERFORM "vybez_encrypted".del(v_user_id, verification_token_name);
    RETURN FALSE;
  END IF;
  verification_token_name = v_email.email::text || '_verification_token';
  IF ("vybez_encrypted".verify (v_user_id, verification_token_name, verify_email.token) ) THEN
    UPDATE "vybez_public".emails e
        SET is_verified = TRUE
    WHERE e.id = verify_email.email_id;
    UPDATE "vybez_memberships_public".app_memberships 
      SET is_verified = TRUE 
    WHERE actor_id = v_user_id;
    PERFORM "vybez_simple_secrets".del(v_user_id, ARRAY[
        'verification_email_sent_at',
        'verification_email_attempts',
        'first_failed_verification_email_attempt'
    ]);
    PERFORM "vybez_encrypted".del(v_user_id, verification_token_name);
    RETURN TRUE;
  ELSE
    IF (
        first_failed_verification_email_attempt IS NULL OR
        first_failed_verification_email_attempt + v_verification_expires_interval < NOW()
    ) THEN
        verification_email_attempts = 1;
        first_failed_verification_email_attempt = NOW();
    ELSE 
        verification_email_attempts = verification_email_attempts + 1;
    END IF;
    PERFORM "vybez_simple_secrets".set(v_user_id, 'verification_email_attempts', verification_email_attempts);
    PERFORM "vybez_simple_secrets".set(v_user_id, 'first_failed_verification_email_attempt', first_failed_verification_email_attempt);
    RETURN FALSE;
  END IF;
END;
$$
LANGUAGE 'plpgsql'
VOLATILE
SECURITY DEFINER;
GRANT EXECUTE ON FUNCTION "vybez_roles_public".verify_email TO anonymous, authenticated;
COMMIT;
