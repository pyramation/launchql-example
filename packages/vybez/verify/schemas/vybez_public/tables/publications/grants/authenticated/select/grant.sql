-- Verify: schemas/vybez_public/tables/publications/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_public.publications', 'select', 'authenticated');
COMMIT;  

