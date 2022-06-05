-- Revert: schemas/vybez_public/tables/interactions/indexes/interactions_interaction_type_id_idx from pg

BEGIN;
DROP INDEX "vybez_public".interactions_interaction_type_id_idx;
COMMIT;  

