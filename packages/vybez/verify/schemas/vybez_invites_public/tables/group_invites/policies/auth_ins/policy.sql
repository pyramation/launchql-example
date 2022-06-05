-- Verify: schemas/vybez_invites_public/tables/group_invites/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'vybez_invites_public.group_invites');
COMMIT;  

