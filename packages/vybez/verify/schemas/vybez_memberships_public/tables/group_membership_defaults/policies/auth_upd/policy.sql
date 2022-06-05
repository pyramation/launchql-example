-- Verify: schemas/vybez_memberships_public/tables/group_membership_defaults/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'vybez_memberships_public.group_membership_defaults');
COMMIT;  

