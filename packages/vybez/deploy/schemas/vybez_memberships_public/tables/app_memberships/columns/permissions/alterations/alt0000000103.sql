-- Deploy: schemas/vybez_memberships_public/tables/app_memberships/columns/permissions/alterations/alt0000000103 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/app_memberships/table
-- requires: schemas/vybez_memberships_public/tables/app_memberships/columns/permissions/column

BEGIN;

ALTER TABLE "vybez_memberships_public".app_memberships 
    ALTER COLUMN permissions SET NOT NULL;
COMMIT;
