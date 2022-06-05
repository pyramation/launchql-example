-- Verify: schemas/vybez_permissions_public/tables/group_member_permissions/table on pg

BEGIN;
SELECT verify_table('vybez_permissions_public.group_member_permissions');
COMMIT;  

