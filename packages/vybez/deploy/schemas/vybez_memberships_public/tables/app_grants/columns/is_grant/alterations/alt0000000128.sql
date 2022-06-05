-- Deploy: schemas/vybez_memberships_public/tables/app_grants/columns/is_grant/alterations/alt0000000128 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/app_grants/table
-- requires: schemas/vybez_memberships_public/tables/app_grants/columns/is_grant/column

BEGIN;

ALTER TABLE "vybez_memberships_public".app_grants 
    ALTER COLUMN is_grant SET DEFAULT true;
COMMIT;
