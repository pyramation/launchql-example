-- Deploy: schemas/vybez_public/tables/user_settings/columns/search_radius/alterations/alt0000000580 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/user_settings/columns/search_radius/column

BEGIN;
COMMENT ON COLUMN "vybez_public".user_settings.search_radius IS E'search radius';
COMMIT;
