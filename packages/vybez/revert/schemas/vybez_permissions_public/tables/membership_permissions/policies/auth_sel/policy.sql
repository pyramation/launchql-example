-- Revert: schemas/vybez_permissions_public/tables/membership_permissions/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "vybez_permissions_public".membership_permissions;
COMMIT;  

