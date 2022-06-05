-- Revert: schemas/vybez_limits_public/tables/membership_limits/columns/num/column from pg

BEGIN;


ALTER TABLE "vybez_limits_public".membership_limits DROP COLUMN num;
COMMIT;  

