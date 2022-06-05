-- Deploy: schemas/vybez_status_public/tables/app_levels/alterations/alt0000000162 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_status_public/schema
-- requires: schemas/vybez_status_public/tables/app_levels/table

BEGIN;
COMMENT ON TABLE "vybez_status_public".app_levels IS E'Levels for achievement';
COMMIT;
