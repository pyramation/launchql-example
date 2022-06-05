-- Revert: schemas/vybez_memberships_private/tables/group_memberships_acl/indexes/group_memberships_acls_is_admin_idx from pg

BEGIN;
DROP INDEX "vybez_memberships_private".group_memberships_acls_is_admin_idx;
COMMIT;  

