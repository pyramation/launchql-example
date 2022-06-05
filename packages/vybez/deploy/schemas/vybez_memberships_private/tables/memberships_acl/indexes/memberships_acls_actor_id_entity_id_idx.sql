-- Deploy: schemas/vybez_memberships_private/tables/memberships_acl/indexes/memberships_acls_actor_id_entity_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_private/schema
-- requires: schemas/vybez_memberships_private/tables/memberships_acl/table
-- requires: schemas/vybez_memberships_private/tables/memberships_acl/columns/actor_id/column
-- requires: schemas/vybez_memberships_private/tables/memberships_acl/columns/entity_id/column
-- requires: schemas/vybez_memberships_private/tables/memberships_acl/columns/permissions/column

BEGIN;
CREATE UNIQUE INDEX memberships_acls_actor_id_entity_id_idx ON "vybez_memberships_private".memberships_acl (actor_id, entity_id) INCLUDE (permissions);
COMMIT;
