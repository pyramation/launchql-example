-- Deploy: schemas/vybez_memberships_public/tables/app_grants/columns/id/alterations/alt0000000123 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/app_grants/table
-- requires: schemas/vybez_memberships_public/tables/app_grants/columns/id/column

BEGIN;

ALTER TABLE "vybez_memberships_public".app_grants 
    ALTER COLUMN id SET NOT NULL;
COMMIT;
