-- Verify: schemas/vybez_memberships_public/tables/members/policies/auth_sel/policy on pg

BEGIN;
SELECT verify_policy('auth_sel', 'vybez_memberships_public.members');
COMMIT;  

