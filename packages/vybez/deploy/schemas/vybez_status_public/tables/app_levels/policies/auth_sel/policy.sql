-- Deploy: schemas/vybez_status_public/tables/app_levels/policies/auth_sel/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_status_public/schema
-- requires: schemas/vybez_status_public/tables/app_levels/table

BEGIN;
CREATE POLICY auth_sel ON "vybez_status_public".app_levels FOR SELECT TO authenticated USING ( TRUE );
COMMIT;
