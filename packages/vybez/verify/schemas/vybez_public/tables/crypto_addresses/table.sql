-- Verify: schemas/vybez_public/tables/crypto_addresses/table on pg

BEGIN;
SELECT verify_table('vybez_public.crypto_addresses');
COMMIT;  

