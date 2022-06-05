-- Deploy: schemas/vybez_public/tables/user_profiles/policies/auth_sel/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/user_profiles/table

BEGIN;
CREATE POLICY auth_sel ON "vybez_public".user_profiles FOR SELECT TO authenticated USING ( TRUE );
COMMIT;
