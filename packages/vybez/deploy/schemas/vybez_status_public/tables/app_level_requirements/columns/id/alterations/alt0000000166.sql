-- Deploy: schemas/vybez_status_public/tables/app_level_requirements/columns/id/alterations/alt0000000166 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_status_public/schema
-- requires: schemas/vybez_status_public/tables/app_level_requirements/table
-- requires: schemas/vybez_status_public/tables/app_level_requirements/columns/id/column

BEGIN;

ALTER TABLE "vybez_status_public".app_level_requirements 
    ALTER COLUMN id SET DEFAULT "vybez_private".uuid_generate_v4();
COMMIT;
