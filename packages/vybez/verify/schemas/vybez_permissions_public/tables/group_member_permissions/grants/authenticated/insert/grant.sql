-- Verify: schemas/vybez_permissions_public/tables/group_member_permissions/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_permissions_public.group_member_permissions', 'insert', 'authenticated');
COMMIT;  

