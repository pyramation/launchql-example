-- Verify: schemas/vybez_limits_public/tables/membership_limit_defaults/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'vybez_limits_public.membership_limit_defaults');
COMMIT;  

