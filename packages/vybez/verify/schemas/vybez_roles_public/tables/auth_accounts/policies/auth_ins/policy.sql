-- Verify: schemas/vybez_roles_public/tables/auth_accounts/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'vybez_roles_public.auth_accounts');
COMMIT;  

