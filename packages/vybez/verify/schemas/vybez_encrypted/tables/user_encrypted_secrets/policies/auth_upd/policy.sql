-- Verify: schemas/vybez_encrypted/tables/user_encrypted_secrets/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'vybez_encrypted.user_encrypted_secrets');
COMMIT;  

