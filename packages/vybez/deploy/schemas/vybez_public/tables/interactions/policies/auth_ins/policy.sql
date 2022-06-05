-- Deploy: schemas/vybez_public/tables/interactions/policies/auth_ins/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/interactions/table

BEGIN;
CREATE POLICY auth_ins ON "vybez_public".interactions FOR INSERT TO authenticated WITH CHECK ( actor_id = jwt_public.current_user_id() );
COMMIT;
