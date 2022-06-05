-- Revert: schemas/vybez_limits_public/tables/app_limits/columns/max/column from pg

BEGIN;


ALTER TABLE "vybez_limits_public".app_limits DROP COLUMN max;
COMMIT;  

