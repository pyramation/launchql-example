-- Revert: schemas/vybez_invites_public/tables/member_invites/policies/auth_sel_members/policy from pg

BEGIN;
DROP POLICY auth_sel_members ON "vybez_invites_public".member_invites;
COMMIT;  

