-- Deploy: schemas/vybez_invites_public/tables/member_claimed_invites/policies/auth_sel_sender/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_invites_public/schema
-- requires: schemas/vybez_invites_public/tables/member_claimed_invites/table

BEGIN;
CREATE POLICY auth_sel_sender ON "vybez_invites_public".member_claimed_invites FOR SELECT TO authenticated USING ( sender_id = jwt_public.current_user_id() );
COMMIT;
