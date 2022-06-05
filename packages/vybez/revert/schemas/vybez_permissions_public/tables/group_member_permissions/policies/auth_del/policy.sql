-- Revert: schemas/vybez_permissions_public/tables/group_member_permissions/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "vybez_permissions_public".group_member_permissions;
COMMIT;  

