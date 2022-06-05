-- Deploy: schemas/vybez_memberships_public/tables/group_memberships/columns/permissions/alterations/alt0000000330 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/group_memberships/table
-- requires: schemas/vybez_memberships_public/tables/group_memberships/columns/permissions/column

BEGIN;

ALTER TABLE "vybez_memberships_public".group_memberships 
    ALTER COLUMN permissions SET DEFAULT lpad('', 32, '0')::bit(32);
COMMIT;
