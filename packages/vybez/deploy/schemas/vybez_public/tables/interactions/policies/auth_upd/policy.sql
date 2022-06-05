-- Deploy: schemas/vybez_public/tables/interactions/policies/auth_upd/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/interactions/table

BEGIN;
CREATE POLICY auth_upd ON "vybez_public".interactions FOR UPDATE TO authenticated USING ( actor_id = jwt_public.current_user_id() );
COMMIT;
