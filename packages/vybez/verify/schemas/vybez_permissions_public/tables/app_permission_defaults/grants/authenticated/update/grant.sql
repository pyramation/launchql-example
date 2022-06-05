-- Verify: schemas/vybez_permissions_public/tables/app_permission_defaults/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_permissions_public.app_permission_defaults', 'update', 'authenticated');
COMMIT;  

