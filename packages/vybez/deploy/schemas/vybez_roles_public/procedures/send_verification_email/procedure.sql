-- Deploy: schemas/vybez_roles_public/procedures/send_verification_email/procedure to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_encrypted/schema
-- requires: schemas/vybez_roles_public/schema

BEGIN;

CREATE FUNCTION "vybez_roles_public".send_verification_email(email email)
RETURNS boolean AS $$
DECLARE
  v_email "vybez_public".emails;
  v_user_id uuid;
  v_verification_token text;
  v_verification_min_duration_between_emails interval = interval '3 minutes';
  v_verification_min_duration_between_new_tokens interval = interval '10 minutes';
  verification_token_name text;
  verification_email_sent_at timestamptz;
BEGIN
  SELECT * FROM "vybez_public".emails e
    WHERE e.email = send_verification_email.email
  INTO v_email;
  IF (NOT FOUND) THEN 
    RETURN FALSE;
  END IF;
  verification_token_name = v_email.email::text || '_verification_token';
  IF ( v_email.is_verified IS TRUE ) THEN
    PERFORM "vybez_simple_secrets".del(v_email.owner_id, ARRAY[
        'verification_email_sent_at',
        'verification_email_attempts',
        'first_failed_verification_email_attempt'
    ]);
    PERFORM "vybez_encrypted".del(v_email.owner_id, ARRAY[
        verification_token_name
    ]);
    RETURN FALSE;
  END IF;
  v_user_id = v_email.owner_id;
  verification_email_sent_at = "vybez_simple_secrets".get(v_user_id, 'verification_email_sent_at');
    IF (
      verification_email_sent_at IS NOT NULL AND
      NOW() < verification_email_sent_at + v_verification_min_duration_between_emails
    ) THEN 
        RETURN NULL;
    END IF;
  
  IF (
    verification_email_sent_at IS NOT NULL AND
    NOW() < verification_email_sent_at + v_verification_min_duration_between_new_tokens 
  ) THEN 
    v_verification_token = "vybez_encrypted".get
        (v_user_id, verification_token_name, encode(gen_random_bytes(10), 'hex'));
  ELSE
    v_verification_token = encode(gen_random_bytes(10), 'hex');
  END IF;
  verification_email_sent_at = NOW();
  
  PERFORM "vybez_simple_secrets".set
    (v_user_id, 'verification_email_sent_at', verification_email_sent_at);
  PERFORM "vybez_encrypted".set
    (v_user_id, verification_token_name, v_verification_token, 'pgp');
  PERFORM
      app_jobs.add_job (
        jwt_private.current_database_id(),
        'send-email-link',
        json_build_object(
          'email_type', 'email_verification',
          'email_id', v_email.id,
          'email', email,
          'verification_token', v_verification_token
        )
      );
  RETURN TRUE;
END;
$$
LANGUAGE 'plpgsql' VOLATILE SECURITY DEFINER;
GRANT EXECUTE ON FUNCTION "vybez_roles_public".send_verification_email TO authenticated, anonymous;
COMMIT;
