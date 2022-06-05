-- Deploy: schemas/vybez_invites_public/tables/member_invites/policies/auth_del_members/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_invites_public/schema
-- requires: schemas/vybez_invites_public/tables/member_invites/table

BEGIN;
CREATE POLICY auth_del_members ON "vybez_invites_public".member_invites FOR DELETE TO authenticated USING ( entity_id IN (SELECT acl.entity_id FROM "vybez_memberships_private".memberships_acl AS acl WHERE acl.actor_id = jwt_public.current_user_id() AND acl.is_admin IS TRUE) );
COMMIT;
