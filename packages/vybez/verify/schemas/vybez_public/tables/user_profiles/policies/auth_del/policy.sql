-- Verify: schemas/vybez_public/tables/user_profiles/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'vybez_public.user_profiles');
COMMIT;  

