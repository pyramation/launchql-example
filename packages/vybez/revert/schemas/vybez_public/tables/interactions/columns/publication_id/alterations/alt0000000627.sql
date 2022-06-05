-- Revert: schemas/vybez_public/tables/interactions/columns/publication_id/alterations/alt0000000627 from pg

BEGIN;


ALTER TABLE "vybez_public".interactions 
    ALTER COLUMN publication_id DROP NOT NULL;


COMMIT;  

