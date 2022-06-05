-- Revert: schemas/vybez_simple_secrets/tables/user_secrets/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "vybez_simple_secrets".user_secrets;
COMMIT;  

