-- Revert: schemas/vybez_public/tables/publications/columns/tags/column from pg

BEGIN;


ALTER TABLE "vybez_public".publications DROP COLUMN tags;
COMMIT;  

