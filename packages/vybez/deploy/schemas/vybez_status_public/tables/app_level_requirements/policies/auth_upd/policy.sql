-- Deploy: schemas/vybez_status_public/tables/app_level_requirements/policies/auth_upd/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_status_public/schema
-- requires: schemas/vybez_status_public/tables/app_level_requirements/table

BEGIN;
CREATE POLICY auth_upd ON "vybez_status_public".app_level_requirements FOR UPDATE TO authenticated USING ( EXISTS (SELECT 1 FROM "vybez_memberships_private".app_memberships_acl AS acl WHERE acl.actor_id = jwt_public.current_user_id() AND (acl.permissions & '00000000000000000000000100000000') = '00000000000000000000000100000000') );
COMMIT;
