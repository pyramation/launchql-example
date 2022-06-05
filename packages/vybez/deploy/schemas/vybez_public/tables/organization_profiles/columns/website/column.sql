-- Deploy: schemas/vybez_public/tables/organization_profiles/columns/website/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/organization_profiles/table

BEGIN;

ALTER TABLE "vybez_public".organization_profiles ADD COLUMN website url;
COMMIT;
