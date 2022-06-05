-- Deploy: schemas/vybez_permissions_public/tables/group_member_permissions/columns/id/alterations/alt0000000278 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_permissions_public/schema
-- requires: schemas/vybez_permissions_public/tables/group_member_permissions/table
-- requires: schemas/vybez_permissions_public/tables/group_member_permissions/columns/id/column

BEGIN;

ALTER TABLE "vybez_permissions_public".group_member_permissions 
    ALTER COLUMN id SET NOT NULL;
COMMIT;
