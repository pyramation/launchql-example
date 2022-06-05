-- Revert: schemas/vybez_encrypted/tables/user_encrypted_secrets/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "vybez_encrypted".user_encrypted_secrets;
COMMIT;  

