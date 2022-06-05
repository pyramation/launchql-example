-- Verify: schemas/vybez_public/tables/crypto_addresses/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_public.crypto_addresses', 'update', 'authenticated');
COMMIT;  

