-- Revert: schemas/vybez_permissions_public/tables/app_permissions/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "vybez_permissions_public".app_permissions;
COMMIT;  

