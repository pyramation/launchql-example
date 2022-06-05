-- Verify: schemas/vybez_permissions_public/tables/app_permissions/policies/auth_sel/policy on pg

BEGIN;
SELECT verify_policy('auth_sel', 'vybez_permissions_public.app_permissions');
COMMIT;  

