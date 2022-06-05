-- Revert: schemas/vybez_public/tables/interactions/constraints/interactions_actor_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "vybez_public".interactions 
    DROP CONSTRAINT interactions_actor_id_fkey;

COMMIT;  

