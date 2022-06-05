-- Verify: schemas/vybez_status_public/tables/app_steps/policies/auth_sel/policy on pg

BEGIN;
SELECT verify_policy('auth_sel', 'vybez_status_public.app_steps');
COMMIT;  

