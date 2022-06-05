-- Deploy: schemas/vybez_invites_public/tables/group_claimed_invites/policies/auth_sel_members/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_invites_public/schema
-- requires: schemas/vybez_invites_public/tables/group_claimed_invites/table

BEGIN;
CREATE POLICY auth_sel_members ON "vybez_invites_public".group_claimed_invites FOR SELECT TO authenticated USING ( entity_id IN (SELECT acl.entity_id FROM "vybez_memberships_private".group_memberships_acl AS acl WHERE acl.actor_id = jwt_public.current_user_id() AND (acl.permissions & '00000000000000000000000000000100') = '00000000000000000000000000000100') );
COMMIT;
