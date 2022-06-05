-- Revert: schemas/vybez_public/tables/interactions/columns/actor_id/alterations/alt0000000620 from pg

BEGIN;


ALTER TABLE "vybez_public".interactions 
    ALTER COLUMN actor_id DROP NOT NULL;


COMMIT;  

