-- Deploy: schemas/vybez_public/tables/interaction_types/policies/auth_sel/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/interaction_types/table

BEGIN;
CREATE POLICY auth_sel ON "vybez_public".interaction_types FOR SELECT TO authenticated USING ( TRUE );
COMMIT;
