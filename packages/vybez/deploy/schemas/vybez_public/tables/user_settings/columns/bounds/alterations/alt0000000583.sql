-- Deploy: schemas/vybez_public/tables/user_settings/columns/bounds/alterations/alt0000000583 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/user_settings/columns/bounds/column

BEGIN;
COMMENT ON COLUMN "vybez_public".user_settings.bounds IS E'all of the users locations combined using ST_Collect for search optimization';
COMMIT;
