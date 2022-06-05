-- Revert: schemas/vybez_memberships_public/tables/group_membership_defaults/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "vybez_memberships_public".group_membership_defaults;
COMMIT;  

