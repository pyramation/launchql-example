-- Revert: schemas/vybez_public/tables/interactions/columns/id/alterations/alt0000000619 from pg

BEGIN;


ALTER TABLE "vybez_public".interactions 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

