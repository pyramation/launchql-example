-- Deploy: schemas/vybez_roles_public/procedures/set_password/procedure to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_encrypted/schema
-- requires: schemas/vybez_roles_public/schema
-- requires: schemas/vybez_public/tables/users/table
-- requires: schemas/vybez_roles_public/tables/audit_logs/table
-- requires: schemas/vybez_simple_secrets/tables/user_secrets/table
-- requires: schemas/vybez_roles_public/procedures/check_password/procedure

BEGIN;

CREATE FUNCTION "vybez_roles_public".set_password (
  current_password text,
  new_password text
)
  RETURNS boolean
  AS $$
DECLARE
  v_user "vybez_public".users;
  v_user_secret "vybez_simple_secrets".user_secrets;
  password_exists boolean;
BEGIN
  PERFORM "vybez_roles_public".check_password(
    new_password
  );
  new_password = trim(new_password);
  SELECT
    u.* INTO v_user
  FROM
    "vybez_public".users AS u
  WHERE
    id = jwt_public.current_user_id ();
  IF (NOT FOUND) THEN
    RETURN FALSE;
  END IF;
  SELECT EXISTS (
    SELECT 1
      FROM "vybez_encrypted".user_encrypted_secrets
      WHERE owner_id=v_user.id
        AND name='password_hash'
  )
  INTO password_exists;
  IF (password_exists IS TRUE) THEN 
    IF ("vybez_encrypted".verify(
        v_user.id,
        'password_hash',
        current_password
    ) IS FALSE) THEN 
      RAISE EXCEPTION 'INCORRECT_PASSWORD';
    END IF;
  END IF;
  INSERT INTO "vybez_roles_public".audit_logs 
    (actor_id, event, success)
  VALUES (
    v_user.id,
    'set_password',
    TRUE
  );
  PERFORM "vybez_encrypted".set
    (v_user.id, 'password_hash', new_password, 'crypt');
      
  RETURN TRUE;
END;
$$
LANGUAGE 'plpgsql'
VOLATILE SECURITY DEFINER;
GRANT EXECUTE ON FUNCTION "vybez_roles_public".set_password TO authenticated;
COMMIT;
