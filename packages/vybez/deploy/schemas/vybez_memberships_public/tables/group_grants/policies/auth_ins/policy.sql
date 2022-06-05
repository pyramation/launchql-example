-- Deploy: schemas/vybez_memberships_public/tables/group_grants/policies/auth_ins/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/group_grants/table

BEGIN;
CREATE POLICY auth_ins ON "vybez_memberships_public".group_grants FOR INSERT TO authenticated WITH CHECK ( entity_id IN (SELECT acl.entity_id FROM "vybez_memberships_private".group_memberships_acl AS acl WHERE acl.actor_id = jwt_public.current_user_id() AND (acl.permissions & '00000000000000000000000000000001') = '00000000000000000000000000000001') );
COMMIT;
