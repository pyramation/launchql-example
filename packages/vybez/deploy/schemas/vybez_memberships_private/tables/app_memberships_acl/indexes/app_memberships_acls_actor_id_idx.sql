-- Deploy: schemas/vybez_memberships_private/tables/app_memberships_acl/indexes/app_memberships_acls_actor_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_private/schema
-- requires: schemas/vybez_memberships_private/tables/app_memberships_acl/table
-- requires: schemas/vybez_memberships_private/tables/app_memberships_acl/columns/actor_id/column
-- requires: schemas/vybez_memberships_private/tables/app_memberships_acl/columns/is_admin/column
-- requires: schemas/vybez_memberships_private/tables/app_memberships_acl/columns/is_owner/column
-- requires: schemas/vybez_memberships_private/tables/app_memberships_acl/columns/permissions/column

BEGIN;
CREATE UNIQUE INDEX app_memberships_acls_actor_id_idx ON "vybez_memberships_private".app_memberships_acl (actor_id) INCLUDE (permissions, is_owner, is_admin);
COMMIT;
