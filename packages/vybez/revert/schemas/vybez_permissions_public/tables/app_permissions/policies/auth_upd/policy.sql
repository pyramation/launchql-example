-- Revert: schemas/vybez_permissions_public/tables/app_permissions/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "vybez_permissions_public".app_permissions;
COMMIT;  

