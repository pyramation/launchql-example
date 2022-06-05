-- Revert: schemas/vybez_status_public/tables/app_level_requirements/table from pg

BEGIN;
DROP TABLE "vybez_status_public".app_level_requirements;
COMMIT;  

