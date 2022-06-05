-- Deploy: schemas/vybez_public/tables/publications/indexes/publications_search_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/publications/table
-- requires: schemas/vybez_public/tables/publications/columns/search/column

BEGIN;
CREATE INDEX publications_search_idx ON "vybez_public".publications USING GIN (search);
COMMIT;
