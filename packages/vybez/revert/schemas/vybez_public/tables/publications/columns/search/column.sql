-- Revert: schemas/vybez_public/tables/publications/columns/search/column from pg

BEGIN;


ALTER TABLE "vybez_public".publications DROP COLUMN search;
COMMIT;  

