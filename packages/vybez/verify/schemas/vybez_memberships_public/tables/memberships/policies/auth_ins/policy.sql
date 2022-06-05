-- Verify: schemas/vybez_memberships_public/tables/memberships/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'vybez_memberships_public.memberships');
COMMIT;  

