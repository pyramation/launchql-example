-- Verify: schemas/vybez_permissions_public/tables/app_permissions/table on pg

BEGIN;
SELECT verify_table('vybez_permissions_public.app_permissions');
COMMIT;  

