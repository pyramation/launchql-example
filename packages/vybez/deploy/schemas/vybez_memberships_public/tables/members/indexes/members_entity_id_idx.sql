-- Deploy: schemas/vybez_memberships_public/tables/members/indexes/members_entity_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/members/table
-- requires: schemas/vybez_memberships_public/tables/members/columns/entity_id/column

BEGIN;
CREATE INDEX members_entity_id_idx ON "vybez_memberships_public".members (entity_id);
COMMIT;
