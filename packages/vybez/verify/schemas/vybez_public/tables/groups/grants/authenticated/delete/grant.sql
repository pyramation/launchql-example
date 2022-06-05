-- Verify: schemas/vybez_public/tables/groups/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_public.groups', 'delete', 'authenticated');
COMMIT;  

