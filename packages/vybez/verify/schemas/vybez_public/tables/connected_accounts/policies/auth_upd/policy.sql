-- Verify: schemas/vybez_public/tables/connected_accounts/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'vybez_public.connected_accounts');
COMMIT;  

