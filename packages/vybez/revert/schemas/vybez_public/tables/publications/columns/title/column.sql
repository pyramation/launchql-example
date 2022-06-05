-- Revert: schemas/vybez_public/tables/publications/columns/title/column from pg

BEGIN;


ALTER TABLE "vybez_public".publications DROP COLUMN title;
COMMIT;  

