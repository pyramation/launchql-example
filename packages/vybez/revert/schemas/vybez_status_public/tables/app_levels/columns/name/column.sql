-- Revert: schemas/vybez_status_public/tables/app_levels/columns/name/column from pg

BEGIN;


ALTER TABLE "vybez_status_public".app_levels DROP COLUMN name;
COMMIT;  

