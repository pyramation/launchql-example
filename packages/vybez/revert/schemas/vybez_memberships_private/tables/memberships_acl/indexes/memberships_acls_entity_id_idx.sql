-- Revert: schemas/vybez_memberships_private/tables/memberships_acl/indexes/memberships_acls_entity_id_idx from pg

BEGIN;
DROP INDEX "vybez_memberships_private".memberships_acls_entity_id_idx;
COMMIT;  

