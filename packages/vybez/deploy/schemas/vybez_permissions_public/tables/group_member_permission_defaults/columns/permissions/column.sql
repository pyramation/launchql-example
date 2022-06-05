-- Deploy: schemas/vybez_permissions_public/tables/group_member_permission_defaults/columns/permissions/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_permissions_public/schema
-- requires: schemas/vybez_permissions_public/tables/group_member_permission_defaults/table

BEGIN;

ALTER TABLE "vybez_permissions_public".group_member_permission_defaults ADD COLUMN permissions bit(32);
COMMIT;
