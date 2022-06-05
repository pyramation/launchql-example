-- Deploy: schemas/vybez_memberships_public/tables/group_memberships/policies/auth_upd/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/group_memberships/table

BEGIN;
CREATE POLICY auth_upd ON "vybez_memberships_public".group_memberships FOR UPDATE TO authenticated USING ( entity_id IN (SELECT acl.entity_id FROM "vybez_memberships_private".group_memberships_acl AS acl WHERE acl.actor_id = jwt_public.current_user_id() AND (acl.permissions & '00000000000000000000000000000001') = '00000000000000000000000000000001') );
COMMIT;
