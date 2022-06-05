-- Verify: schemas/vybez_memberships_public/tables/memberships/policies/auth_ins_own/policy on pg

BEGIN;
SELECT verify_policy('auth_ins_own', 'vybez_memberships_public.memberships');
COMMIT;  

