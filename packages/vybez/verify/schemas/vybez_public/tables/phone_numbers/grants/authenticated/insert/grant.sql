-- Verify: schemas/vybez_public/tables/phone_numbers/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_public.phone_numbers', 'insert', 'authenticated');
COMMIT;  

