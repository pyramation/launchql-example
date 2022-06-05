-- Verify: schemas/vybez_memberships_public/tables/admin_grants/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'vybez_memberships_public.admin_grants');
COMMIT;  

