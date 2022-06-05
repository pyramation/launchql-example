-- Revert: schemas/vybez_limits_public/tables/app_limit_defaults/columns/max/column from pg

BEGIN;


ALTER TABLE "vybez_limits_public".app_limit_defaults DROP COLUMN max;
COMMIT;  

