-- Verify: schemas/vybez_invites_public/tables/member_invites/policies/auth_ins_create_invite_check/policy on pg

BEGIN;
SELECT verify_policy('auth_ins_create_invite_check', 'vybez_invites_public.member_invites');
COMMIT;  

