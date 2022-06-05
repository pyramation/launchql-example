-- Deploy: schemas/vybez_public/tables/publications/policies/auth_sel/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/publications/table

BEGIN;
CREATE POLICY auth_sel ON "vybez_public".publications FOR SELECT TO authenticated USING ( owner_id IN (SELECT acl.entity_id FROM "vybez_memberships_private".memberships_acl AS acl WHERE acl.actor_id = jwt_public.current_user_id() AND (acl.permissions & '00000000000000000010000000000000') = '00000000000000000010000000000000') OR (is_published = TRUE AND is_private = TRUE AND owner_id IN (SELECT acl.entity_id FROM "vybez_memberships_private".memberships_acl AS acl WHERE acl.actor_id = jwt_public.current_user_id())) OR (is_published = TRUE AND is_private = FALSE) );
COMMIT;
