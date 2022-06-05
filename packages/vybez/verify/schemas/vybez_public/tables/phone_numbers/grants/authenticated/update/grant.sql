-- Verify: schemas/vybez_public/tables/phone_numbers/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_public.phone_numbers', 'update', 'authenticated');
COMMIT;  

