-- Revert: schemas/vybez_invites_public/tables/member_invites/policies/auth_ins_create_invite_check/policy from pg

BEGIN;
DROP POLICY auth_ins_create_invite_check ON "vybez_invites_public".member_invites;
COMMIT;  

