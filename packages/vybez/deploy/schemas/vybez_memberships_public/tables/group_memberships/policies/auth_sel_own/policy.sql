-- Deploy: schemas/vybez_memberships_public/tables/group_memberships/policies/auth_sel_own/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/group_memberships/table

BEGIN;
CREATE POLICY auth_sel_own ON "vybez_memberships_public".group_memberships FOR SELECT TO authenticated USING ( actor_id = jwt_public.current_user_id() );
COMMIT;
