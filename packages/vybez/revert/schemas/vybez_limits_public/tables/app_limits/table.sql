-- Revert: schemas/vybez_limits_public/tables/app_limits/table from pg

BEGIN;
DROP TABLE "vybez_limits_public".app_limits;
COMMIT;  

