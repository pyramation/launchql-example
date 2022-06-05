-- Verify: schemas/vybez_public/tables/user_settings/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'vybez_public.user_settings');
COMMIT;  

