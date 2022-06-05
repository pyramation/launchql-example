-- Deploy: schemas/vybez_roles_public/procedures/get_current_user/procedure to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_roles_public/schema
-- requires: schemas/vybez_public/tables/users/table

BEGIN;

CREATE FUNCTION "vybez_roles_public".get_current_user()
    RETURNS "vybez_public".users
AS $$
DECLARE
  v_user "vybez_public".users;
BEGIN
  IF "vybez_roles_public".get_current_user_id() IS NOT NULL THEN
     SELECT * FROM "vybez_public".users WHERE id = "vybez_roles_public".get_current_user_id() INTO v_user;
     RETURN v_user;
  ELSE
     RETURN NULL;
  END IF;
END;
$$
LANGUAGE 'plpgsql' STABLE;
GRANT EXECUTE ON FUNCTION "vybez_roles_public".get_current_user TO authenticated;
COMMIT;
