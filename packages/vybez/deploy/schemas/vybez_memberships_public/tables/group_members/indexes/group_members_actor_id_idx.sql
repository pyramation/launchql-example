-- Deploy: schemas/vybez_memberships_public/tables/group_members/indexes/group_members_actor_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/group_members/table
-- requires: schemas/vybez_memberships_public/tables/group_members/columns/actor_id/column

BEGIN;
CREATE INDEX group_members_actor_id_idx ON "vybez_memberships_public".group_members (actor_id);
COMMIT;
