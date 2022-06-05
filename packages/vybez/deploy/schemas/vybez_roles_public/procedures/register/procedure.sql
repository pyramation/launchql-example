-- Deploy: schemas/vybez_roles_public/procedures/register/procedure to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_encrypted/schema
-- requires: schemas/vybez_roles_public/schema
-- requires: schemas/vybez_public/tables/users/table
-- requires: schemas/vybez_public/tables/emails/table
-- requires: schemas/vybez_roles_private/tables/api_tokens/table
-- requires: schemas/vybez_roles_public/procedures/check_password/procedure

BEGIN;

CREATE FUNCTION "vybez_roles_public".register (
  email text,
  password text,
  remember_me boolean DEFAULT FALSE
)
  RETURNS "vybez_roles_private".api_tokens
  AS $$
DECLARE
  v_user "vybez_public".users;
  v_email "vybez_public".emails;
  v_token "vybez_roles_private".api_tokens;
BEGIN
  PERFORM "vybez_roles_public".check_password(
    password
  );
  password = trim(password);
  SELECT * FROM "vybez_public".emails t
    WHERE trim(register.email)::email = t.email
  INTO v_email;
  IF (NOT FOUND) THEN
    INSERT INTO "vybez_public".users
      DEFAULT VALUES
    RETURNING
      * INTO v_user;
    INSERT INTO "vybez_public".emails (owner_id, email)
      VALUES (v_user.id, trim(register.email))
    RETURNING
      * INTO v_email;
    IF (remember_me IS TRUE) THEN 
      INSERT INTO "vybez_roles_private".api_tokens (
        user_id,
        access_token_expires_at
      )
      VALUES (
        v_user.id,
        ( NOW() + '1 year'::interval )
      )
      RETURNING
        * INTO v_token;
    ELSE 
      INSERT INTO "vybez_roles_private".api_tokens (
        user_id
      )
      VALUES (
        v_user.id
      )
      RETURNING
        * INTO v_token;
    END IF;
    PERFORM "vybez_encrypted".set
      (v_user.id, 'password_hash', trim(password), 'crypt');
    RETURN v_token;
  END IF;
  RAISE EXCEPTION 'ACCOUNT_EXISTS';
END;
$$
LANGUAGE plpgsql
VOLATILE
SECURITY DEFINER;
GRANT EXECUTE ON FUNCTION "vybez_roles_public".register TO anonymous;
COMMIT;
