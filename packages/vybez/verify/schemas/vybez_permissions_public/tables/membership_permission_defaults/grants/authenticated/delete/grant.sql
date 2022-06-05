-- Verify: schemas/vybez_permissions_public/tables/membership_permission_defaults/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_permissions_public.membership_permission_defaults', 'delete', 'authenticated');
COMMIT;  

