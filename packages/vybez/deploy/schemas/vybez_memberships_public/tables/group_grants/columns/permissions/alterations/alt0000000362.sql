-- Deploy: schemas/vybez_memberships_public/tables/group_grants/columns/permissions/alterations/alt0000000362 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/group_grants/table
-- requires: schemas/vybez_memberships_public/tables/group_grants/columns/permissions/column

BEGIN;

ALTER TABLE "vybez_memberships_public".group_grants 
    ALTER COLUMN permissions SET DEFAULT lpad('', 32, '0')::bit(32);
COMMIT;
