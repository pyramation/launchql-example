-- Verify: schemas/vybez_public/tables/crypto_addresses/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_public.crypto_addresses', 'delete', 'authenticated');
COMMIT;  

