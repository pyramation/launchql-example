-- Deploy: schemas/vybez_public/tables/organization_profiles/columns/reputation/alterations/alt0000000589 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/organization_profiles/table
-- requires: schemas/vybez_public/tables/organization_profiles/columns/reputation/column

BEGIN;

ALTER TABLE "vybez_public".organization_profiles 
    ALTER COLUMN reputation SET DEFAULT 0;
COMMIT;
