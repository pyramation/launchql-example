-- Verify: schemas/vybez_permissions_public/tables/app_permissions/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'vybez_permissions_public.app_permissions');
COMMIT;  

