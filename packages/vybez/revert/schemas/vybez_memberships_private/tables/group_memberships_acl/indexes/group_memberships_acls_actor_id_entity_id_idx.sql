-- Revert: schemas/vybez_memberships_private/tables/group_memberships_acl/indexes/group_memberships_acls_actor_id_entity_id_idx from pg

BEGIN;
DROP INDEX "vybez_memberships_private".group_memberships_acls_actor_id_entity_id_idx;
COMMIT;  

