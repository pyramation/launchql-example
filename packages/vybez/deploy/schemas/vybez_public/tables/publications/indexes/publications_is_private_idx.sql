-- Deploy: schemas/vybez_public/tables/publications/indexes/publications_is_private_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/publications/table
-- requires: schemas/vybez_public/tables/publications/columns/is_private/column

BEGIN;
CREATE INDEX publications_is_private_idx ON "vybez_public".publications (is_private);
COMMIT;
