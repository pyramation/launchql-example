-- Deploy: schemas/vybez_public/tables/organization_profiles/grants/authenticated/insert/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/organization_profiles/table

BEGIN;
GRANT INSERT ON TABLE "vybez_public".organization_profiles TO authenticated;
COMMIT;
