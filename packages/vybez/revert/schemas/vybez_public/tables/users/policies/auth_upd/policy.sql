-- Revert: schemas/vybez_public/tables/users/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "vybez_public".users;
COMMIT;  

