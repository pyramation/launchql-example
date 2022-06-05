-- Deploy: schemas/vybez_memberships_public/tables/group_memberships/columns/id/alterations/alt0000000300 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/group_memberships/table
-- requires: schemas/vybez_memberships_public/tables/group_memberships/columns/id/column

BEGIN;

ALTER TABLE "vybez_memberships_public".group_memberships 
    ALTER COLUMN id SET NOT NULL;
COMMIT;
