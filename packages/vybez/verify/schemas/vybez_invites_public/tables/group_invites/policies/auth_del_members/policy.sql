-- Verify: schemas/vybez_invites_public/tables/group_invites/policies/auth_del_members/policy on pg

BEGIN;
SELECT verify_policy('auth_del_members', 'vybez_invites_public.group_invites');
COMMIT;  

