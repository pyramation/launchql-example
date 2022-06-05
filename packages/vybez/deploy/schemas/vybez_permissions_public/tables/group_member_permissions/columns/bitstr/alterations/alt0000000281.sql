-- Deploy: schemas/vybez_permissions_public/tables/group_member_permissions/columns/bitstr/alterations/alt0000000281 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_permissions_public/schema
-- requires: schemas/vybez_permissions_public/tables/group_member_permissions/table
-- requires: schemas/vybez_permissions_public/tables/group_member_permissions/columns/bitstr/column

BEGIN;

ALTER TABLE "vybez_permissions_public".group_member_permissions 
    ALTER COLUMN bitstr SET NOT NULL;
COMMIT;
