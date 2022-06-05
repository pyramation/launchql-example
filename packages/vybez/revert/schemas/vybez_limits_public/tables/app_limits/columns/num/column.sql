-- Revert: schemas/vybez_limits_public/tables/app_limits/columns/num/column from pg

BEGIN;


ALTER TABLE "vybez_limits_public".app_limits DROP COLUMN num;
COMMIT;  

