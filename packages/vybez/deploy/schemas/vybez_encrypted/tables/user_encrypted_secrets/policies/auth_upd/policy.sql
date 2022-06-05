-- Deploy: schemas/vybez_encrypted/tables/user_encrypted_secrets/policies/auth_upd/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_encrypted/schema
-- requires: schemas/vybez_encrypted/tables/user_encrypted_secrets/table

BEGIN;
CREATE POLICY auth_upd ON "vybez_encrypted".user_encrypted_secrets FOR UPDATE TO authenticated USING ( owner_id = jwt_public.current_user_id() );
COMMIT;
