-- Verify: schemas/vybez_permissions_public/tables/app_permissions/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_permissions_public.app_permissions', 'delete', 'authenticated');
COMMIT;  

