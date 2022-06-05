-- Deploy: schemas/vybez_public/tables/publications/indexes/publications_group_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/publications/table
-- requires: schemas/vybez_public/tables/publications/columns/group_id/column

BEGIN;
CREATE INDEX publications_group_id_idx ON "vybez_public".publications (group_id);
COMMIT;
