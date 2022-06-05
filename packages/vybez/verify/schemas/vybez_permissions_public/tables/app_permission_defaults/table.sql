-- Verify: schemas/vybez_permissions_public/tables/app_permission_defaults/table on pg

BEGIN;
SELECT verify_table('vybez_permissions_public.app_permission_defaults');
COMMIT;  

