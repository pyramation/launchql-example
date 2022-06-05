-- Verify: schemas/vybez_memberships_public/tables/membership_defaults/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'vybez_memberships_public.membership_defaults');
COMMIT;  

