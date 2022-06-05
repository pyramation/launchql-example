-- Revert: schemas/vybez_public/tables/users/policies/auth_ins_insert_chk/policy from pg

BEGIN;
DROP POLICY auth_ins_insert_chk ON "vybez_public".users;
COMMIT;  

