-- Deploy: schemas/vybez_public/tables/users/policies/auth_del/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/users/table

BEGIN;
CREATE POLICY auth_del ON "vybez_public".users FOR DELETE TO authenticated USING ( id IN (SELECT acl.entity_id FROM "vybez_memberships_private".memberships_acl AS acl WHERE acl.actor_id = jwt_public.current_user_id() AND acl.is_owner IS TRUE) );
COMMIT;
