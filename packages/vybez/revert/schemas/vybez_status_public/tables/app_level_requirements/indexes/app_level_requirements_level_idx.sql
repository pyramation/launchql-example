-- Revert: schemas/vybez_status_public/tables/app_level_requirements/indexes/app_level_requirements_level_idx from pg

BEGIN;
DROP INDEX "vybez_status_public".app_level_requirements_level_idx;
COMMIT;  

