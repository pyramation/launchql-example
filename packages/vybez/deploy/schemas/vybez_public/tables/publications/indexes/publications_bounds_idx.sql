-- Deploy: schemas/vybez_public/tables/publications/indexes/publications_bounds_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/publications/table
-- requires: schemas/vybez_public/tables/publications/columns/bounds/column

BEGIN;
CREATE INDEX publications_bounds_idx ON "vybez_public".publications USING GIST (bounds);
COMMIT;
