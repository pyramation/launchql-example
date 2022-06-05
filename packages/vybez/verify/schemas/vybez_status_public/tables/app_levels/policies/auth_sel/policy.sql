-- Verify: schemas/vybez_status_public/tables/app_levels/policies/auth_sel/policy on pg

BEGIN;
SELECT verify_policy('auth_sel', 'vybez_status_public.app_levels');
COMMIT;  

