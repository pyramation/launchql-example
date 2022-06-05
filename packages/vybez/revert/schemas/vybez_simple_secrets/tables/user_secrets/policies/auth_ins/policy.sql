-- Revert: schemas/vybez_simple_secrets/tables/user_secrets/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "vybez_simple_secrets".user_secrets;
COMMIT;  

