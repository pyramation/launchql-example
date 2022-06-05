-- Deploy: schemas/vybez_public/tables/groups/indexes/groups_bounds_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/groups/table
-- requires: schemas/vybez_public/tables/groups/columns/bounds/column

BEGIN;
CREATE INDEX groups_bounds_idx ON "vybez_public".groups USING GIST (bounds);
COMMIT;
