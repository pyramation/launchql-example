-- Verify: schemas/vybez_public/tables/user_settings/policies/auth_sel/policy on pg

BEGIN;
SELECT verify_policy('auth_sel', 'vybez_public.user_settings');
COMMIT;  

