-- Verify: schemas/vybez_public/tables/users/policies/auth_sel/policy on pg

BEGIN;
SELECT verify_policy('auth_sel', 'vybez_public.users');
COMMIT;  

