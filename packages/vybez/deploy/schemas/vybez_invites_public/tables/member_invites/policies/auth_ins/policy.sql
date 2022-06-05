-- Deploy: schemas/vybez_invites_public/tables/member_invites/policies/auth_ins/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_invites_public/schema
-- requires: schemas/vybez_invites_public/tables/member_invites/table

BEGIN;
CREATE POLICY auth_ins ON "vybez_invites_public".member_invites FOR INSERT TO authenticated WITH CHECK ( sender_id = jwt_public.current_user_id() );
COMMIT;
