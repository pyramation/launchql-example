-- Verify: schemas/vybez_limits_public/tables/app_limits/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'vybez_limits_public.app_limits');
COMMIT;  

