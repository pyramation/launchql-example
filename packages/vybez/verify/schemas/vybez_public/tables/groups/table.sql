-- Verify: schemas/vybez_public/tables/groups/table on pg

BEGIN;
SELECT verify_table('vybez_public.groups');
COMMIT;  

