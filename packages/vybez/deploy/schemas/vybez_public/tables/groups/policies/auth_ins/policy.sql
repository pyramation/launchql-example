-- Deploy: schemas/vybez_public/tables/groups/policies/auth_ins/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/groups/table

BEGIN;
CREATE POLICY auth_ins ON "vybez_public".groups FOR INSERT TO authenticated WITH CHECK ( owner_id IN (SELECT acl.entity_id FROM "vybez_memberships_private".memberships_acl AS acl WHERE acl.actor_id = jwt_public.current_user_id() AND (acl.permissions & '00000000000000000000000000100000') = '00000000000000000000000000100000') );
COMMIT;
