-- Verify: schemas/vybez_public/tables/users/policies/auth_del_admin_deletes/policy on pg

BEGIN;
SELECT verify_policy('auth_del_admin_deletes', 'vybez_public.users');
COMMIT;  

