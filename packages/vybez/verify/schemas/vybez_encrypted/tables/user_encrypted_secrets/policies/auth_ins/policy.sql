-- Verify: schemas/vybez_encrypted/tables/user_encrypted_secrets/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'vybez_encrypted.user_encrypted_secrets');
COMMIT;  

