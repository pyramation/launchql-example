-- Revert: schemas/vybez_permissions_public/tables/membership_permission_defaults/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "vybez_permissions_public".membership_permission_defaults;
COMMIT;  

