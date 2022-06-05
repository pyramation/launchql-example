-- Deploy: schemas/vybez_memberships_public/tables/memberships/indexes/memberships_actor_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/memberships/table
-- requires: schemas/vybez_memberships_public/tables/memberships/columns/actor_id/column

BEGIN;
CREATE INDEX memberships_actor_id_idx ON "vybez_memberships_public".memberships (actor_id);
COMMIT;
