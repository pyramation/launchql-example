-- Verify: schemas/vybez_permissions_public/tables/app_permission_defaults/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'vybez_permissions_public.app_permission_defaults');
COMMIT;  

