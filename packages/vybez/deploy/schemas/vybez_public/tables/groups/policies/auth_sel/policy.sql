-- Deploy: schemas/vybez_public/tables/groups/policies/auth_sel/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/groups/table

BEGIN;
CREATE POLICY auth_sel ON "vybez_public".groups FOR SELECT TO authenticated USING ( TRUE );
COMMIT;
