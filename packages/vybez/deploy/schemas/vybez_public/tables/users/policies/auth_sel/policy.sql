-- Deploy: schemas/vybez_public/tables/users/policies/auth_sel/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/users/table

BEGIN;
CREATE POLICY auth_sel ON "vybez_public".users FOR SELECT TO authenticated USING ( TRUE );
COMMIT;
