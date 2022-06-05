-- Verify: schemas/vybez_public/tables/phone_numbers/table on pg

BEGIN;
SELECT verify_table('vybez_public.phone_numbers');
COMMIT;  

