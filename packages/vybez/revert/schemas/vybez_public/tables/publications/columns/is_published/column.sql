-- Revert: schemas/vybez_public/tables/publications/columns/is_published/column from pg

BEGIN;


ALTER TABLE "vybez_public".publications DROP COLUMN is_published;
COMMIT;  

