-- Verify: schemas/vybez_permissions_public/tables/app_permissions/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'vybez_permissions_public.app_permissions');
COMMIT;  

