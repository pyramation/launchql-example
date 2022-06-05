-- Verify: schemas/vybez_public/tables/publications/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_public.publications', 'update', 'authenticated');
COMMIT;  

