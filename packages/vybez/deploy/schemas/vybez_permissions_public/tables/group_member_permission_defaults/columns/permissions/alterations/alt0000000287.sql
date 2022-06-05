-- Deploy: schemas/vybez_permissions_public/tables/group_member_permission_defaults/columns/permissions/alterations/alt0000000287 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_permissions_public/schema
-- requires: schemas/vybez_permissions_public/tables/group_member_permission_defaults/table
-- requires: schemas/vybez_permissions_public/tables/group_member_permission_defaults/columns/permissions/column

BEGIN;

ALTER TABLE "vybez_permissions_public".group_member_permission_defaults 
    ALTER COLUMN permissions SET NOT NULL;
COMMIT;
