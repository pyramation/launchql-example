-- Verify: schemas/vybez_encrypted/tables/user_encrypted_secrets/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_encrypted.user_encrypted_secrets', 'insert', 'authenticated');
COMMIT;  

