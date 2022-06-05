-- Revert: schemas/vybez_invites_public/tables/group_claimed_invites/policies/auth_sel_sender/policy from pg

BEGIN;
DROP POLICY auth_sel_sender ON "vybez_invites_public".group_claimed_invites;
COMMIT;  

