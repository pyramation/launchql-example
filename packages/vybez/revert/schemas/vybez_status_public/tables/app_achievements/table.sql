-- Revert: schemas/vybez_status_public/tables/app_achievements/table from pg

BEGIN;
DROP TABLE "vybez_status_public".app_achievements;
COMMIT;  

