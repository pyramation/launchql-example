-- Deploy: schemas/vybez_memberships_public/tables/membership_defaults/policies/auth_ins/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/membership_defaults/table

BEGIN;
CREATE POLICY auth_ins ON "vybez_memberships_public".membership_defaults FOR INSERT TO authenticated WITH CHECK ( EXISTS (SELECT 1 FROM "vybez_memberships_private".memberships_acl AS acl WHERE acl.actor_id = jwt_public.current_user_id() AND (acl.permissions & '00000000000000000000000000000001') = '00000000000000000000000000000001') );
COMMIT;
