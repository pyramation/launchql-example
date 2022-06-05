-- Deploy: schemas/vybez_encrypted/tables/user_encrypted_secrets/policies/auth_del/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_encrypted/schema
-- requires: schemas/vybez_encrypted/tables/user_encrypted_secrets/table

BEGIN;
CREATE POLICY auth_del ON "vybez_encrypted".user_encrypted_secrets FOR DELETE TO authenticated USING ( owner_id = jwt_public.current_user_id() );
COMMIT;
