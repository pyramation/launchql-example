-- Deploy: schemas/vybez_public/tables/user_settings/policies/auth_sel/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/user_settings/table

BEGIN;
CREATE POLICY auth_sel ON "vybez_public".user_settings FOR SELECT TO authenticated USING ( user_id = jwt_public.current_user_id() );
COMMIT;
