-- Verify: schemas/vybez_memberships_public/tables/app_owner_grants/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'vybez_memberships_public.app_owner_grants');
COMMIT;  

