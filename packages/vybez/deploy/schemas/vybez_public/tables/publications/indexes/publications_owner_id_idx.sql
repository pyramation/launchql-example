-- Deploy: schemas/vybez_public/tables/publications/indexes/publications_owner_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/publications/table
-- requires: schemas/vybez_public/tables/publications/columns/owner_id/column

BEGIN;
CREATE INDEX publications_owner_id_idx ON "vybez_public".publications (owner_id);
COMMIT;
