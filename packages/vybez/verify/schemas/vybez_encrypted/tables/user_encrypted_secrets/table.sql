-- Verify: schemas/vybez_encrypted/tables/user_encrypted_secrets/table on pg

BEGIN;
SELECT verify_table('vybez_encrypted.user_encrypted_secrets');
COMMIT;  

