-- Verify: schemas/vybez_memberships_private/tables/group_memberships_acl/indexes/group_memberships_acls_is_admin_idx on pg

BEGIN;
SELECT verify_index('vybez_memberships_private.group_memberships_acl', 'group_memberships_acls_is_admin_idx');
COMMIT;  

