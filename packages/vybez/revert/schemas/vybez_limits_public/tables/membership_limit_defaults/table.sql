-- Revert: schemas/vybez_limits_public/tables/membership_limit_defaults/table from pg

BEGIN;
DROP TABLE "vybez_limits_public".membership_limit_defaults;
COMMIT;  

