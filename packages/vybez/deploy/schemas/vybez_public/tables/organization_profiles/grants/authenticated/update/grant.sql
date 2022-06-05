-- Deploy: schemas/vybez_public/tables/organization_profiles/grants/authenticated/update/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/organization_profiles/table

BEGIN;
GRANT UPDATE ON TABLE "vybez_public".organization_profiles TO authenticated;
COMMIT;
