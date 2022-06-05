-- Deploy: schemas/vybez_invites_public/tables/invites/policies/auth_sel/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_invites_public/schema
-- requires: schemas/vybez_invites_public/tables/invites/table

BEGIN;
CREATE POLICY auth_sel ON "vybez_invites_public".invites FOR SELECT TO authenticated USING ( sender_id = jwt_public.current_user_id() );
COMMIT;
