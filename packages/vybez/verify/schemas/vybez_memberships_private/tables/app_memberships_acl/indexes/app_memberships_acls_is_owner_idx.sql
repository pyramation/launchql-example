-- Verify: schemas/vybez_memberships_private/tables/app_memberships_acl/indexes/app_memberships_acls_is_owner_idx on pg

BEGIN;
SELECT verify_index('vybez_memberships_private.app_memberships_acl', 'app_memberships_acls_is_owner_idx');
COMMIT;  

