-- Revert: schemas/vybez_limits_public/tables/membership_limit_defaults/columns/name/column from pg

BEGIN;


ALTER TABLE "vybez_limits_public".membership_limit_defaults DROP COLUMN name;
COMMIT;  

