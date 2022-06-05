-- Deploy: schemas/vybez_memberships_private/tables/app_memberships_acl/indexes/app_memberships_acls_is_admin_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_private/schema
-- requires: schemas/vybez_memberships_private/tables/app_memberships_acl/table
-- requires: schemas/vybez_memberships_private/tables/app_memberships_acl/columns/is_admin/column

BEGIN;
CREATE INDEX app_memberships_acls_is_admin_idx ON "vybez_memberships_private".app_memberships_acl (is_admin);
COMMIT;
