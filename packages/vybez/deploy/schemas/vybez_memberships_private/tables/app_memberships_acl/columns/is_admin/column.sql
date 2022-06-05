-- Deploy: schemas/vybez_memberships_private/tables/app_memberships_acl/columns/is_admin/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_private/schema
-- requires: schemas/vybez_memberships_private/tables/app_memberships_acl/table

BEGIN;

ALTER TABLE "vybez_memberships_private".app_memberships_acl ADD COLUMN is_admin boolean;
COMMIT;
