-- Deploy: schemas/vybez_permissions_public/tables/group_member_permission_defaults/policies/auth_del/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_permissions_public/schema
-- requires: schemas/vybez_permissions_public/tables/group_member_permission_defaults/table

BEGIN;
CREATE POLICY auth_del ON "vybez_permissions_public".group_member_permission_defaults FOR DELETE TO authenticated USING ( entity_id IN (SELECT acl.entity_id FROM "vybez_memberships_private".group_memberships_acl AS acl WHERE acl.actor_id = jwt_public.current_user_id() AND (acl.permissions & '00000000000000000000000000100000') = '00000000000000000000000000100000') );
COMMIT;
