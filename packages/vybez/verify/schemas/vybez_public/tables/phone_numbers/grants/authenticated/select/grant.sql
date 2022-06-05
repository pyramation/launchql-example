-- Verify: schemas/vybez_public/tables/phone_numbers/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_public.phone_numbers', 'select', 'authenticated');
COMMIT;  

