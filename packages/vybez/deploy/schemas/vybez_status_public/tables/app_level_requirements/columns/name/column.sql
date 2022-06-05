-- Deploy: schemas/vybez_status_public/tables/app_level_requirements/columns/name/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_status_public/schema
-- requires: schemas/vybez_status_public/tables/app_level_requirements/table

BEGIN;

ALTER TABLE "vybez_status_public".app_level_requirements ADD COLUMN name citext;
COMMIT;
