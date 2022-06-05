-- Verify: schemas/vybez_permissions_public/tables/group_member_permission_defaults/table on pg

BEGIN;
SELECT verify_table('vybez_permissions_public.group_member_permission_defaults');
COMMIT;  

