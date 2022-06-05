-- Deploy: schemas/vybez_public/tables/organization_profiles/policies/auth_sel/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/organization_profiles/table

BEGIN;
CREATE POLICY auth_sel ON "vybez_public".organization_profiles FOR SELECT TO authenticated USING ( TRUE );
COMMIT;
