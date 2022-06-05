-- Revert: schemas/vybez_public/tables/interactions/columns/publication_id/column from pg

BEGIN;


ALTER TABLE "vybez_public".interactions DROP COLUMN publication_id;
COMMIT;  

