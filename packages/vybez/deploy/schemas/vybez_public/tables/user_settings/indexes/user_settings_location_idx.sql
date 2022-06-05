-- Deploy: schemas/vybez_public/tables/user_settings/indexes/user_settings_location_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/user_settings/table
-- requires: schemas/vybez_public/tables/user_settings/columns/location/column

BEGIN;
CREATE INDEX user_settings_location_idx ON "vybez_public".user_settings USING GIST (location);
COMMIT;
