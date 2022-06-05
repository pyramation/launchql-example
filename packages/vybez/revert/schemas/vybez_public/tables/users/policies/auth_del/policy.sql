-- Revert: schemas/vybez_public/tables/users/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "vybez_public".users;
COMMIT;  

