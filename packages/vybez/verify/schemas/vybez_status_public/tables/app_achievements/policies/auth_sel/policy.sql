-- Verify: schemas/vybez_status_public/tables/app_achievements/policies/auth_sel/policy on pg

BEGIN;
SELECT verify_policy('auth_sel', 'vybez_status_public.app_achievements');
COMMIT;  

