-- Revert: schemas/vybez_public/tables/interactions/columns/actor_id/column from pg

BEGIN;


ALTER TABLE "vybez_public".interactions DROP COLUMN actor_id;
COMMIT;  

