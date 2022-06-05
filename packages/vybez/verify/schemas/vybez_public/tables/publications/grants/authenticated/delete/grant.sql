-- Verify: schemas/vybez_public/tables/publications/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_public.publications', 'delete', 'authenticated');
COMMIT;  

