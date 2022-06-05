-- Revert: schemas/vybez_memberships_public/tables/group_memberships/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "vybez_memberships_public".group_memberships;
COMMIT;  

