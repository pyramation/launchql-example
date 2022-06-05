-- Deploy: schemas/vybez_memberships_public/tables/group_memberships/columns/is_admin/alterations/alt0000000327 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/group_memberships/table
-- requires: schemas/vybez_memberships_public/tables/group_memberships/columns/is_admin/column

BEGIN;

ALTER TABLE "vybez_memberships_public".group_memberships 
    ALTER COLUMN is_admin SET NOT NULL;
COMMIT;
