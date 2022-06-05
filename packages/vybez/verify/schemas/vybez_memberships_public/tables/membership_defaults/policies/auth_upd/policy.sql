-- Verify: schemas/vybez_memberships_public/tables/membership_defaults/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'vybez_memberships_public.membership_defaults');
COMMIT;  

