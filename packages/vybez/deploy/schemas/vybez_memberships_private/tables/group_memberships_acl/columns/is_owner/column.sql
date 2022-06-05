-- Deploy: schemas/vybez_memberships_private/tables/group_memberships_acl/columns/is_owner/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_private/schema
-- requires: schemas/vybez_memberships_private/tables/group_memberships_acl/table

BEGIN;

ALTER TABLE "vybez_memberships_private".group_memberships_acl ADD COLUMN is_owner boolean;
COMMIT;
