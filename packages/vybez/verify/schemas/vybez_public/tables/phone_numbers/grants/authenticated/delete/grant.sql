-- Verify: schemas/vybez_public/tables/phone_numbers/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_public.phone_numbers', 'delete', 'authenticated');
COMMIT;  

