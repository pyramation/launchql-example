-- Revert: schemas/vybez_permissions_public/tables/app_permissions/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "vybez_permissions_public".app_permissions;
COMMIT;  

