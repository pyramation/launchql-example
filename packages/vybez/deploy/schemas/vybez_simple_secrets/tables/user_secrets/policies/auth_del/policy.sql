-- Deploy: schemas/vybez_simple_secrets/tables/user_secrets/policies/auth_del/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_simple_secrets/schema
-- requires: schemas/vybez_simple_secrets/tables/user_secrets/table

BEGIN;
CREATE POLICY auth_del ON "vybez_simple_secrets".user_secrets FOR DELETE TO authenticated USING ( owner_id = jwt_public.current_user_id() );
COMMIT;
