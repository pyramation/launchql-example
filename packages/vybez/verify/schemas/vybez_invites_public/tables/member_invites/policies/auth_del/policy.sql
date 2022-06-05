-- Verify: schemas/vybez_invites_public/tables/member_invites/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'vybez_invites_public.member_invites');
COMMIT;  

