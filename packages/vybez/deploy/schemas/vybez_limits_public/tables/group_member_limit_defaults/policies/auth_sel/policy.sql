-- Deploy: schemas/vybez_limits_public/tables/group_member_limit_defaults/policies/auth_sel/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_limits_public/schema
-- requires: schemas/vybez_limits_public/tables/group_member_limit_defaults/table

BEGIN;
CREATE POLICY auth_sel ON "vybez_limits_public".group_member_limit_defaults FOR SELECT TO authenticated USING ( EXISTS (SELECT 1 FROM "vybez_memberships_private".app_memberships_acl AS acl WHERE acl.actor_id = jwt_public.current_user_id() AND (acl.permissions & '00000000000000000000000001000000') = '00000000000000000000000001000000') );
COMMIT;
