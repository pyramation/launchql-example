-- Revert: schemas/vybez_memberships_public/tables/group_memberships/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "vybez_memberships_public".group_memberships;
COMMIT;  

