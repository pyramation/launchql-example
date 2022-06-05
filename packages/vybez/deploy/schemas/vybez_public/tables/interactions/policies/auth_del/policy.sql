-- Deploy: schemas/vybez_public/tables/interactions/policies/auth_del/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/interactions/table

BEGIN;
CREATE POLICY auth_del ON "vybez_public".interactions FOR DELETE TO authenticated USING ( actor_id = jwt_public.current_user_id() );
COMMIT;
