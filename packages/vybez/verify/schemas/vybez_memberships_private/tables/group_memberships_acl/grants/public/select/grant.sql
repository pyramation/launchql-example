-- Verify: schemas/vybez_memberships_private/tables/group_memberships_acl/grants/public/select/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_memberships_private.group_memberships_acl', 'select', 'public');
COMMIT;  

