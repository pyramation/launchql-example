-- Verify: schemas/vybez_public/tables/groups/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_public.groups', 'select', 'authenticated');
COMMIT;  

