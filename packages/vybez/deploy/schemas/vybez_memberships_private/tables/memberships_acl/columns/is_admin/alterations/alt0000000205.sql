-- Deploy: schemas/vybez_memberships_private/tables/memberships_acl/columns/is_admin/alterations/alt0000000205 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_private/schema
-- requires: schemas/vybez_memberships_private/tables/memberships_acl/table
-- requires: schemas/vybez_memberships_private/tables/memberships_acl/columns/is_admin/column

BEGIN;

ALTER TABLE "vybez_memberships_private".memberships_acl 
    ALTER COLUMN is_admin SET NOT NULL;
COMMIT;
