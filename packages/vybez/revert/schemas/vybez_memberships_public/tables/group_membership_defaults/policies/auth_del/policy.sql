-- Revert: schemas/vybez_memberships_public/tables/group_membership_defaults/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "vybez_memberships_public".group_membership_defaults;
COMMIT;  

