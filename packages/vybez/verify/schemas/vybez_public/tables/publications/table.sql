-- Verify: schemas/vybez_public/tables/publications/table on pg

BEGIN;
SELECT verify_table('vybez_public.publications');
COMMIT;  

