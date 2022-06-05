-- Revert: schemas/vybez_public/tables/interactions/indexes/interactions_actor_id_idx from pg

BEGIN;
DROP INDEX "vybez_public".interactions_actor_id_idx;
COMMIT;  

