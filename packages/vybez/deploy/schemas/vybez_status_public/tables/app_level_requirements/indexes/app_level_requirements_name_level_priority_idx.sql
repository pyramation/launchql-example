-- Deploy: schemas/vybez_status_public/tables/app_level_requirements/indexes/app_level_requirements_name_level_priority_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_status_public/schema
-- requires: schemas/vybez_status_public/tables/app_level_requirements/table
-- requires: schemas/vybez_status_public/tables/app_level_requirements/columns/name/column
-- requires: schemas/vybez_status_public/tables/app_level_requirements/columns/level/column
-- requires: schemas/vybez_status_public/tables/app_level_requirements/columns/priority/column

BEGIN;
CREATE INDEX app_level_requirements_name_level_priority_idx ON "vybez_status_public".app_level_requirements (name, level, priority);
COMMIT;
