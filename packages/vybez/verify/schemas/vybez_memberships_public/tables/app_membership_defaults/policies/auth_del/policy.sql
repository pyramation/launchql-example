-- Verify: schemas/vybez_memberships_public/tables/app_membership_defaults/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'vybez_memberships_public.app_membership_defaults');
COMMIT;  

