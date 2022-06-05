-- Deploy: schemas/vybez_public/tables/organization_profiles/columns/organization_id/alterations/alt0000000590 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/organization_profiles/table
-- requires: schemas/vybez_public/tables/organization_profiles/columns/organization_id/column

BEGIN;

ALTER TABLE "vybez_public".organization_profiles 
    ALTER COLUMN organization_id SET NOT NULL;
COMMIT;
