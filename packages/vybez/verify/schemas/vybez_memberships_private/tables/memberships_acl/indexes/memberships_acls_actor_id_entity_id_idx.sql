-- Verify: schemas/vybez_memberships_private/tables/memberships_acl/indexes/memberships_acls_actor_id_entity_id_idx on pg

BEGIN;
SELECT verify_index('vybez_memberships_private.memberships_acl', 'memberships_acls_actor_id_entity_id_idx');
COMMIT;  

