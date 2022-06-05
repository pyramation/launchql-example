-- Verify: schemas/vybez_public/tables/user_settings/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'vybez_public.user_settings');
COMMIT;  

