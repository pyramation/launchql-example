-- Verify: schemas/vybez_limits_public/tables/app_limits/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'vybez_limits_public.app_limits');
COMMIT;  

