-- Deploy: schemas/vybez_public/tables/publications/indexes/publications_location_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/publications/table
-- requires: schemas/vybez_public/tables/publications/columns/location/column

BEGIN;
CREATE INDEX publications_location_idx ON "vybez_public".publications USING GIST (location);
COMMIT;
