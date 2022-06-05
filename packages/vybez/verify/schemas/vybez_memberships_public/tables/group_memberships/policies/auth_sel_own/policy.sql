-- Verify: schemas/vybez_memberships_public/tables/group_memberships/policies/auth_sel_own/policy on pg

BEGIN;
SELECT verify_policy('auth_sel_own', 'vybez_memberships_public.group_memberships');
COMMIT;  

