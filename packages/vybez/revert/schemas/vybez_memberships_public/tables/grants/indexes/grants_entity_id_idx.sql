-- Revert: schemas/vybez_memberships_public/tables/grants/indexes/grants_entity_id_idx from pg

BEGIN;
DROP INDEX "vybez_memberships_public".grants_entity_id_idx;
COMMIT;  

