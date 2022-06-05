-- Revert: schemas/vybez_public/tables/interactions/constraints/interactions_user_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "vybez_public".interactions 
    DROP CONSTRAINT interactions_user_id_fkey;

COMMIT;  

