-- Revert: schemas/vybez_memberships_public/tables/memberships/indexes/memberships_entity_id_idx from pg

BEGIN;
DROP INDEX "vybez_memberships_public".memberships_entity_id_idx;
COMMIT;  

