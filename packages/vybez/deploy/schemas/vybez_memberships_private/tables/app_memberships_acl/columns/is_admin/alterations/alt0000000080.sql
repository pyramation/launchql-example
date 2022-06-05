-- Deploy: schemas/vybez_memberships_private/tables/app_memberships_acl/columns/is_admin/alterations/alt0000000080 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_private/schema
-- requires: schemas/vybez_memberships_private/tables/app_memberships_acl/table
-- requires: schemas/vybez_memberships_private/tables/app_memberships_acl/columns/is_admin/column

BEGIN;

ALTER TABLE "vybez_memberships_private".app_memberships_acl 
    ALTER COLUMN is_admin SET DEFAULT false;
COMMIT;
