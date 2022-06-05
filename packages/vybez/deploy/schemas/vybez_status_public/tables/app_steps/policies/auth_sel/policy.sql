-- Deploy: schemas/vybez_status_public/tables/app_steps/policies/auth_sel/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_status_public/schema
-- requires: schemas/vybez_status_public/tables/app_steps/table

BEGIN;
CREATE POLICY auth_sel ON "vybez_status_public".app_steps FOR SELECT TO authenticated USING ( actor_id = jwt_public.current_user_id() );
COMMIT;
