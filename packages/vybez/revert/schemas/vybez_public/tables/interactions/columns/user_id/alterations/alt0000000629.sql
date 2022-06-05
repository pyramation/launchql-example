-- Revert: schemas/vybez_public/tables/interactions/columns/user_id/alterations/alt0000000629 from pg

BEGIN;


ALTER TABLE "vybez_public".interactions 
    ALTER COLUMN user_id DROP DEFAULT;

COMMIT;  

