-- Verify: schemas/vybez_public/tables/users/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'vybez_public.users');
COMMIT;  

