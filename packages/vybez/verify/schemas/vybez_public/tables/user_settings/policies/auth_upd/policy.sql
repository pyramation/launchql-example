-- Verify: schemas/vybez_public/tables/user_settings/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'vybez_public.user_settings');
COMMIT;  

