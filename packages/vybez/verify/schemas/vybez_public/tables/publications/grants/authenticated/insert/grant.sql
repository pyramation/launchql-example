-- Verify: schemas/vybez_public/tables/publications/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_public.publications', 'insert', 'authenticated');
COMMIT;  

