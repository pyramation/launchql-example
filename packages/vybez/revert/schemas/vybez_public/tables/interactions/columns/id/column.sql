-- Revert: schemas/vybez_public/tables/interactions/columns/id/column from pg

BEGIN;


ALTER TABLE "vybez_public".interactions DROP COLUMN id;
COMMIT;  

