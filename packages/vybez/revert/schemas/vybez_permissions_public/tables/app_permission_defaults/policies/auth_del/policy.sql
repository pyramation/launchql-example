-- Revert: schemas/vybez_permissions_public/tables/app_permission_defaults/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "vybez_permissions_public".app_permission_defaults;
COMMIT;  

