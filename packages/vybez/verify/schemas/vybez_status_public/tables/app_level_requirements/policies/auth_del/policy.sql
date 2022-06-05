-- Verify: schemas/vybez_status_public/tables/app_level_requirements/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'vybez_status_public.app_level_requirements');
COMMIT;  

