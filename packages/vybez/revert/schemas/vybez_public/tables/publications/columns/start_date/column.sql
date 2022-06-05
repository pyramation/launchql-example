-- Revert: schemas/vybez_public/tables/publications/columns/start_date/column from pg

BEGIN;


ALTER TABLE "vybez_public".publications DROP COLUMN start_date;
COMMIT;  

