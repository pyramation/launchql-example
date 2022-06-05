-- Revert: schemas/vybez_public/tables/publications/columns/time_required/column from pg

BEGIN;


ALTER TABLE "vybez_public".publications DROP COLUMN time_required;
COMMIT;  

