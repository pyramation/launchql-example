-- Verify: schemas/vybez_roles_public/tables/auth_accounts/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'vybez_roles_public.auth_accounts');
COMMIT;  

