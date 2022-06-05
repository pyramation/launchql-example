-- Deploy: schemas/vybez_limits_public/tables/group_member_limits/policies/auth_sel/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_limits_public/schema
-- requires: schemas/vybez_limits_public/tables/group_member_limits/table

BEGIN;
CREATE POLICY auth_sel ON "vybez_limits_public".group_member_limits FOR SELECT TO authenticated USING ( entity_id IN (SELECT acl.entity_id FROM "vybez_memberships_private".group_memberships_acl AS acl WHERE acl.actor_id = jwt_public.current_user_id() AND (acl.permissions & '00000000000000000000000000010000') = '00000000000000000000000000010000') );
COMMIT;
