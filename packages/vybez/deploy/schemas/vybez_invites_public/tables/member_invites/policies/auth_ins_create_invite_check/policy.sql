-- Deploy: schemas/vybez_invites_public/tables/member_invites/policies/auth_ins_create_invite_check/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_invites_public/schema
-- requires: schemas/vybez_invites_public/tables/member_invites/table

BEGIN;
CREATE POLICY auth_ins_create_invite_check ON "vybez_invites_public".member_invites AS RESTRICTIVE FOR INSERT TO authenticated WITH CHECK ( entity_id IN (SELECT acl.entity_id FROM "vybez_memberships_private".memberships_acl AS acl WHERE acl.actor_id = jwt_public.current_user_id() AND (acl.permissions & '00000000000000000000000000000010') = '00000000000000000000000000000010') );
COMMIT;
