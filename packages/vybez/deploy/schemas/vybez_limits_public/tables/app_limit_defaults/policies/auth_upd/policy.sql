-- Deploy: schemas/vybez_limits_public/tables/app_limit_defaults/policies/auth_upd/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_limits_public/schema
-- requires: schemas/vybez_limits_public/tables/app_limit_defaults/table

BEGIN;
CREATE POLICY auth_upd ON "vybez_limits_public".app_limit_defaults FOR UPDATE TO authenticated USING ( EXISTS (SELECT 1 FROM "vybez_memberships_private".app_memberships_acl AS acl WHERE acl.actor_id = jwt_public.current_user_id() AND (acl.permissions & '00000000000000000000000001000000') = '00000000000000000000000001000000') );
COMMIT;
