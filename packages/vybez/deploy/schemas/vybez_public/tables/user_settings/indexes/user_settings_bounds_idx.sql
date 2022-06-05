-- Deploy: schemas/vybez_public/tables/user_settings/indexes/user_settings_bounds_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/user_settings/table
-- requires: schemas/vybez_public/tables/user_settings/columns/bounds/column

BEGIN;
CREATE INDEX user_settings_bounds_idx ON "vybez_public".user_settings USING GIST (bounds);
COMMIT;
