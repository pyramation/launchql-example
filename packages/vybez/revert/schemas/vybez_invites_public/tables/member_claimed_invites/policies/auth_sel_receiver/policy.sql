-- Revert: schemas/vybez_invites_public/tables/member_claimed_invites/policies/auth_sel_receiver/policy from pg

BEGIN;
DROP POLICY auth_sel_receiver ON "vybez_invites_public".member_claimed_invites;
COMMIT;  

