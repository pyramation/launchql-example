-- Deploy: schemas/vybez_memberships_private/tables/app_memberships_acl/columns/permissions/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_private/schema
-- requires: schemas/vybez_memberships_private/tables/app_memberships_acl/table

BEGIN;

ALTER TABLE "vybez_memberships_private".app_memberships_acl ADD COLUMN permissions bit(32);
COMMIT;
