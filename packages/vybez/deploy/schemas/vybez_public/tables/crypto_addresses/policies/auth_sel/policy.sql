-- Deploy: schemas/vybez_public/tables/crypto_addresses/policies/auth_sel/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/crypto_addresses/table

BEGIN;
CREATE POLICY auth_sel ON "vybez_public".crypto_addresses FOR SELECT TO authenticated USING ( owner_id IN (SELECT acl.entity_id FROM "vybez_memberships_private".memberships_acl AS acl WHERE acl.actor_id = jwt_public.current_user_id() AND (acl.permissions & '00000000000000000000100000000000') = '00000000000000000000100000000000') );
COMMIT;
