-- Revert: schemas/vybez_limits_public/tables/membership_limits/table from pg

BEGIN;
DROP TABLE "vybez_limits_public".membership_limits;
COMMIT;  

