-- Verify: schemas/vybez_memberships_public/tables/app_memberships/policies/auth_sel_own/policy on pg

BEGIN;
SELECT verify_policy('auth_sel_own', 'vybez_memberships_public.app_memberships');
COMMIT;  

