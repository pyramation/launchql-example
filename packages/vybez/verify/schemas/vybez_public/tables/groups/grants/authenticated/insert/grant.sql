-- Verify: schemas/vybez_public/tables/groups/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_public.groups', 'insert', 'authenticated');
COMMIT;  

