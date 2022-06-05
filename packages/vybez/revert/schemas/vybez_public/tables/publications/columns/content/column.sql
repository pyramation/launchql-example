-- Revert: schemas/vybez_public/tables/publications/columns/content/column from pg

BEGIN;


ALTER TABLE "vybez_public".publications DROP COLUMN content;
COMMIT;  

