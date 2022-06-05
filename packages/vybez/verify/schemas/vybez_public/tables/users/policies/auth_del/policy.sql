-- Verify: schemas/vybez_public/tables/users/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'vybez_public.users');
COMMIT;  

