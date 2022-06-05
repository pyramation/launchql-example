-- Verify: schemas/vybez_invites_public/tables/group_invites/policies/auth_sel/policy on pg

BEGIN;
SELECT verify_policy('auth_sel', 'vybez_invites_public.group_invites');
COMMIT;  

