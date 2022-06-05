-- Revert: schemas/vybez_status_public/tables/app_level_requirements/columns/priority/alterations/alt0000000173 from pg

BEGIN;


ALTER TABLE "vybez_status_public".app_level_requirements 
    ALTER COLUMN priority DROP DEFAULT;

COMMIT;  

