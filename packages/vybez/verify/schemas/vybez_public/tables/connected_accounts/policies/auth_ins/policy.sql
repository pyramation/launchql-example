-- Verify: schemas/vybez_public/tables/connected_accounts/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'vybez_public.connected_accounts');
COMMIT;  

