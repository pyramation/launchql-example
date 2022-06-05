-- Revert: schemas/vybez_permissions_public/tables/membership_permissions/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "vybez_permissions_public".membership_permissions;
COMMIT;  

