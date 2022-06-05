-- Deploy: schemas/vybez_status_public/tables/app_level_requirements/columns/priority/alterations/alt0000000173 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_status_public/schema
-- requires: schemas/vybez_status_public/tables/app_level_requirements/table
-- requires: schemas/vybez_status_public/tables/app_level_requirements/columns/priority/column

BEGIN;

ALTER TABLE "vybez_status_public".app_level_requirements 
    ALTER COLUMN priority SET DEFAULT 100;
COMMIT;
