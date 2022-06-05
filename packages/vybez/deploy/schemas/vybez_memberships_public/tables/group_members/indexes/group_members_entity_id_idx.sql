-- Deploy: schemas/vybez_memberships_public/tables/group_members/indexes/group_members_entity_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/group_members/table
-- requires: schemas/vybez_memberships_public/tables/group_members/columns/entity_id/column

BEGIN;
CREATE INDEX group_members_entity_id_idx ON "vybez_memberships_public".group_members (entity_id);
COMMIT;
