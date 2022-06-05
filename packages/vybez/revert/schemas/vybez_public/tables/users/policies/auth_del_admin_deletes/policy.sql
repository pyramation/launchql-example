-- Revert: schemas/vybez_public/tables/users/policies/auth_del_admin_deletes/policy from pg

BEGIN;
DROP POLICY auth_del_admin_deletes ON "vybez_public".users;
COMMIT;  

