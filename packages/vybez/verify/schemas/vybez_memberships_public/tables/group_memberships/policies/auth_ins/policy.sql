-- Verify: schemas/vybez_memberships_public/tables/group_memberships/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'vybez_memberships_public.group_memberships');
COMMIT;  

