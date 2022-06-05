-- Verify: schemas/vybez_memberships_public/tables/owner_grants/policies/auth_sel/policy on pg

BEGIN;
SELECT verify_policy('auth_sel', 'vybez_memberships_public.owner_grants');
COMMIT;  

