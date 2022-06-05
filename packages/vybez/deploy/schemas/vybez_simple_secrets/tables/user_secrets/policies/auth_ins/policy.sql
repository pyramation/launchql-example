-- Deploy: schemas/vybez_simple_secrets/tables/user_secrets/policies/auth_ins/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_simple_secrets/schema
-- requires: schemas/vybez_simple_secrets/tables/user_secrets/table

BEGIN;
CREATE POLICY auth_ins ON "vybez_simple_secrets".user_secrets FOR INSERT TO authenticated WITH CHECK ( owner_id = jwt_public.current_user_id() );
COMMIT;
