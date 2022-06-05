-- Revert: schemas/vybez_limits_public/tables/membership_limits/columns/name/column from pg

BEGIN;


ALTER TABLE "vybez_limits_public".membership_limits DROP COLUMN name;
COMMIT;  

