-- Deploy: schemas/vybez_public/tables/groups/indexes/groups_owner_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/groups/table
-- requires: schemas/vybez_public/tables/groups/columns/owner_id/column

BEGIN;
CREATE INDEX groups_owner_id_idx ON "vybez_public".groups (owner_id);
COMMIT;
