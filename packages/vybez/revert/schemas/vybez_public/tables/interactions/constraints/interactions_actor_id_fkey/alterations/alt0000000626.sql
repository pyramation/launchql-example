-- Revert: schemas/vybez_public/tables/interactions/constraints/interactions_actor_id_fkey/alterations/alt0000000626 from pg

BEGIN;
COMMENT ON CONSTRAINT interactions_actor_id_fkey ON "vybez_public".interactions IS NULL;
COMMIT;  

