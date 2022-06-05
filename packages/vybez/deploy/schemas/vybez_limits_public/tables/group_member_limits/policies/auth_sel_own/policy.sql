-- Deploy: schemas/vybez_limits_public/tables/group_member_limits/policies/auth_sel_own/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_limits_public/schema
-- requires: schemas/vybez_limits_public/tables/group_member_limits/table

BEGIN;
CREATE POLICY auth_sel_own ON "vybez_limits_public".group_member_limits FOR SELECT TO authenticated USING ( actor_id = jwt_public.current_user_id() );
COMMIT;
