-- Deploy: schemas/vybez_memberships_public/tables/admin_grants/columns/id/alterations/alt0000000244 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/admin_grants/table
-- requires: schemas/vybez_memberships_public/tables/admin_grants/columns/id/column

BEGIN;

ALTER TABLE "vybez_memberships_public".admin_grants 
    ALTER COLUMN id SET NOT NULL;
COMMIT;
