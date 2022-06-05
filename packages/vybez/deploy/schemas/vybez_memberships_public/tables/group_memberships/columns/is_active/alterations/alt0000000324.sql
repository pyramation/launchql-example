-- Deploy: schemas/vybez_memberships_public/tables/group_memberships/columns/is_active/alterations/alt0000000324 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/group_memberships/table
-- requires: schemas/vybez_memberships_public/tables/group_memberships/columns/is_active/column

BEGIN;

ALTER TABLE "vybez_memberships_public".group_memberships 
    ALTER COLUMN is_active SET DEFAULT false;
COMMIT;
