-- Deploy: schemas/vybez_memberships_public/tables/app_admin_grants/columns/id/alterations/alt0000000109 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/app_admin_grants/table
-- requires: schemas/vybez_memberships_public/tables/app_admin_grants/columns/id/column

BEGIN;

ALTER TABLE "vybez_memberships_public".app_admin_grants 
    ALTER COLUMN id SET NOT NULL;
COMMIT;
