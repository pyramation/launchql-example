-- Verify: schemas/vybez_permissions_public/tables/membership_permissions/policies/auth_sel/policy on pg

BEGIN;
SELECT verify_policy('auth_sel', 'vybez_permissions_public.membership_permissions');
COMMIT;  

