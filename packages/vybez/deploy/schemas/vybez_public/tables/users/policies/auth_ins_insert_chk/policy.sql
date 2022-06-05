-- Deploy: schemas/vybez_public/tables/users/policies/auth_ins_insert_chk/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/users/table

BEGIN;
CREATE POLICY auth_ins_insert_chk ON "vybez_public".users FOR INSERT TO authenticated WITH CHECK ( EXISTS (SELECT 1 FROM "vybez_memberships_private".app_memberships_acl AS acl WHERE acl.actor_id = jwt_public.current_user_id() AND (acl.permissions & '00000000000000000000000000010000') = '00000000000000000000000000010000') AND type = 1 );
COMMIT;
