-- Revert: schemas/vybez_limits_public/tables/app_limit_defaults/table from pg

BEGIN;
DROP TABLE "vybez_limits_public".app_limit_defaults;
COMMIT;  

