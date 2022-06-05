-- Revert: schemas/vybez_memberships_public/tables/group_memberships/indexes/group_memberships_entity_id_idx from pg

BEGIN;
DROP INDEX "vybez_memberships_public".group_memberships_entity_id_idx;
COMMIT;  

