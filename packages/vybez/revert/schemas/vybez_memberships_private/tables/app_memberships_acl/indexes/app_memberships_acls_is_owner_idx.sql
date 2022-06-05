-- Revert: schemas/vybez_memberships_private/tables/app_memberships_acl/indexes/app_memberships_acls_is_owner_idx from pg

BEGIN;
DROP INDEX "vybez_memberships_private".app_memberships_acls_is_owner_idx;
COMMIT;  

