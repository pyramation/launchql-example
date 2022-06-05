-- Revert: schemas/vybez_status_public/tables/app_achievements/columns/name/column from pg

BEGIN;


ALTER TABLE "vybez_status_public".app_achievements DROP COLUMN name;
COMMIT;  

