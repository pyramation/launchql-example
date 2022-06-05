-- Revert: schemas/vybez_memberships_public/tables/group_memberships/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "vybez_memberships_public".group_memberships;
COMMIT;  

