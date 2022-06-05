-- Deploy: schemas/vybez_status_public/tables/app_level_requirements/columns/required_count/alterations/alt0000000170 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_status_public/schema
-- requires: schemas/vybez_status_public/tables/app_level_requirements/table
-- requires: schemas/vybez_status_public/tables/app_level_requirements/columns/required_count/column

BEGIN;

ALTER TABLE "vybez_status_public".app_level_requirements 
    ALTER COLUMN required_count SET NOT NULL;
COMMIT;
