-- Verify: schemas/vybez_public/tables/connected_accounts/policies/auth_sel/policy on pg

BEGIN;
SELECT verify_policy('auth_sel', 'vybez_public.connected_accounts');
COMMIT;  

