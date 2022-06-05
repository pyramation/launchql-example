-- Verify: schemas/vybez_permissions_public/tables/membership_permissions/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'vybez_permissions_public.membership_permissions');
COMMIT;  

