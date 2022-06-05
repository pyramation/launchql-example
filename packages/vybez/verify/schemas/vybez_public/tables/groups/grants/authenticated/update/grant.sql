-- Verify: schemas/vybez_public/tables/groups/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_public.groups', 'update', 'authenticated');
COMMIT;  

