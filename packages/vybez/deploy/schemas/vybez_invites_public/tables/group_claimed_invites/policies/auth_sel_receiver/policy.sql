-- Deploy: schemas/vybez_invites_public/tables/group_claimed_invites/policies/auth_sel_receiver/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_invites_public/schema
-- requires: schemas/vybez_invites_public/tables/group_claimed_invites/table

BEGIN;
CREATE POLICY auth_sel_receiver ON "vybez_invites_public".group_claimed_invites FOR SELECT TO authenticated USING ( receiver_id = jwt_public.current_user_id() );
COMMIT;
