-- Deploy: schemas/vybez_public/tables/interactions/policies/auth_sel/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/interactions/table

BEGIN;
CREATE POLICY auth_sel ON "vybez_public".interactions FOR SELECT TO authenticated USING ( TRUE );
COMMIT;
