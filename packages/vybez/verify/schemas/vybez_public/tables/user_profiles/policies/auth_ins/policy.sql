-- Verify: schemas/vybez_public/tables/user_profiles/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'vybez_public.user_profiles');
COMMIT;  

