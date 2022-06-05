-- Deploy: schemas/vybez_memberships_public/tables/group_owner_grants/policies/auth_sel/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/group_owner_grants/table

BEGIN;
CREATE POLICY auth_sel ON "vybez_memberships_public".group_owner_grants FOR SELECT TO authenticated USING ( entity_id IN (SELECT acl.entity_id FROM "vybez_memberships_private".group_memberships_acl AS acl WHERE acl.actor_id = jwt_public.current_user_id() AND acl.is_owner IS TRUE) );
COMMIT;
