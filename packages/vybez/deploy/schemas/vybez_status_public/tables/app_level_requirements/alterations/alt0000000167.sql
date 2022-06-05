-- Deploy: schemas/vybez_status_public/tables/app_level_requirements/alterations/alt0000000167 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_status_public/schema
-- requires: schemas/vybez_status_public/tables/app_level_requirements/table

BEGIN;
COMMENT ON TABLE "vybez_status_public".app_level_requirements IS E'Requirements to achieve a level';
COMMIT;
