-- Revert: schemas/vybez_permissions_public/tables/group_member_permission_defaults/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "vybez_permissions_public".group_member_permission_defaults;
COMMIT;  

