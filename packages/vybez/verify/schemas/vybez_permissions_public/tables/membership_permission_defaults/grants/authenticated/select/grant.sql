-- Verify: schemas/vybez_permissions_public/tables/membership_permission_defaults/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_permissions_public.membership_permission_defaults', 'select', 'authenticated');
COMMIT;  

