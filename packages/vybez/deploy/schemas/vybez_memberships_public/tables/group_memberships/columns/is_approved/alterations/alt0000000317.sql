-- Deploy: schemas/vybez_memberships_public/tables/group_memberships/columns/is_approved/alterations/alt0000000317 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/group_memberships/table
-- requires: schemas/vybez_memberships_public/tables/group_memberships/columns/is_approved/column

BEGIN;

ALTER TABLE "vybez_memberships_public".group_memberships 
    ALTER COLUMN is_approved SET NOT NULL;
COMMIT;
