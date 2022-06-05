-- Verify: schemas/vybez_memberships_private/tables/group_memberships_acl/table on pg

BEGIN;
SELECT verify_table('vybez_memberships_private.group_memberships_acl');
COMMIT;  

