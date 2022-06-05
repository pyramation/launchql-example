-- Revert: schemas/vybez_encrypted/tables/user_encrypted_secrets/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "vybez_encrypted".user_encrypted_secrets;
COMMIT;  

