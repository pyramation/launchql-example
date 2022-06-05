-- Verify: schemas/vybez_memberships_private/tables/app_memberships_acl/indexes/app_memberships_acls_actor_id_idx on pg

BEGIN;
SELECT verify_index('vybez_memberships_private.app_memberships_acl', 'app_memberships_acls_actor_id_idx');
COMMIT;  

