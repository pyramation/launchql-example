-- Verify: schemas/vybez_permissions_public/tables/membership_permission_defaults/table on pg

BEGIN;
SELECT verify_table('vybez_permissions_public.membership_permission_defaults');
COMMIT;  

