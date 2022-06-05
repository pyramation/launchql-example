-- Deploy: schemas/vybez_memberships_public/tables/group_memberships/indexes/group_memberships_entity_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/group_memberships/table
-- requires: schemas/vybez_memberships_public/tables/group_memberships/columns/entity_id/column

BEGIN;
CREATE INDEX group_memberships_entity_id_idx ON "vybez_memberships_public".group_memberships (entity_id);
COMMIT;
