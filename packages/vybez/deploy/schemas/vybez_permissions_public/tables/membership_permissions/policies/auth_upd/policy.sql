-- Deploy: schemas/vybez_permissions_public/tables/membership_permissions/policies/auth_upd/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_permissions_public/schema
-- requires: schemas/vybez_permissions_public/tables/membership_permissions/table

BEGIN;
CREATE POLICY auth_upd ON "vybez_permissions_public".membership_permissions FOR UPDATE TO authenticated USING ( EXISTS (SELECT 1 FROM "vybez_memberships_private".app_memberships_acl AS acl WHERE acl.actor_id = jwt_public.current_user_id() AND (acl.permissions & '00000000000000000000000010000000') = '00000000000000000000000010000000') );
COMMIT;
