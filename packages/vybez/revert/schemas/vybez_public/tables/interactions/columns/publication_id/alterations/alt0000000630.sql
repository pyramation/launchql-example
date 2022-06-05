-- Revert: schemas/vybez_public/tables/interactions/columns/publication_id/alterations/alt0000000630 from pg

BEGIN;


ALTER TABLE "vybez_public".interactions 
    ALTER COLUMN publication_id DROP DEFAULT;

COMMIT;  

