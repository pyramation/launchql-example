-- Deploy: schemas/vybez_memberships_public/tables/group_owner_grants/columns/is_grant/alterations/alt0000000354 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/group_owner_grants/table
-- requires: schemas/vybez_memberships_public/tables/group_owner_grants/columns/is_grant/column

BEGIN;

ALTER TABLE "vybez_memberships_public".group_owner_grants 
    ALTER COLUMN is_grant SET DEFAULT true;
COMMIT;
