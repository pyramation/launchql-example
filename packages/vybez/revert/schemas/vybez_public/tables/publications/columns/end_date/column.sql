-- Revert: schemas/vybez_public/tables/publications/columns/end_date/column from pg

BEGIN;


ALTER TABLE "vybez_public".publications DROP COLUMN end_date;
COMMIT;  

