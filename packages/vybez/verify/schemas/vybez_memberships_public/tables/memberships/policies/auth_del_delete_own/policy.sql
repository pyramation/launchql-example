-- Verify: schemas/vybez_memberships_public/tables/memberships/policies/auth_del_delete_own/policy on pg

BEGIN;
SELECT verify_policy('auth_del_delete_own', 'vybez_memberships_public.memberships');
COMMIT;  

