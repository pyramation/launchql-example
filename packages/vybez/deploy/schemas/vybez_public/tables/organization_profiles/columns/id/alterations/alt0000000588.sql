-- Deploy: schemas/vybez_public/tables/organization_profiles/columns/id/alterations/alt0000000588 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/organization_profiles/table
-- requires: schemas/vybez_public/tables/organization_profiles/columns/id/column

BEGIN;

ALTER TABLE "vybez_public".organization_profiles 
    ALTER COLUMN id SET DEFAULT "vybez_private".uuid_generate_v4();
COMMIT;
