-- Deploy: schemas/vybez_memberships_public/tables/app_memberships/columns/is_owner/alterations/alt0000000100 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/app_memberships/table
-- requires: schemas/vybez_memberships_public/tables/app_memberships/columns/is_owner/column

BEGIN;

ALTER TABLE "vybez_memberships_public".app_memberships 
    ALTER COLUMN is_owner SET DEFAULT false;
COMMIT;
