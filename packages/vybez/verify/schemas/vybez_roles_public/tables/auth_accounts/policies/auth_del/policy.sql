-- Verify: schemas/vybez_roles_public/tables/auth_accounts/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'vybez_roles_public.auth_accounts');
COMMIT;  

