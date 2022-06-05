-- Verify: schemas/vybez_permissions_public/tables/membership_permission_defaults/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'vybez_permissions_public.membership_permission_defaults');
COMMIT;  

