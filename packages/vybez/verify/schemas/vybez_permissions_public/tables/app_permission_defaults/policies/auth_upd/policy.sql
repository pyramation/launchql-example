-- Verify: schemas/vybez_permissions_public/tables/app_permission_defaults/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'vybez_permissions_public.app_permission_defaults');
COMMIT;  

