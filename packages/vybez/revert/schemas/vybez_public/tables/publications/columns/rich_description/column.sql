-- Revert: schemas/vybez_public/tables/publications/columns/rich_description/column from pg

BEGIN;


ALTER TABLE "vybez_public".publications DROP COLUMN rich_description;
COMMIT;  

