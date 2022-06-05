-- Revert: schemas/vybez_memberships_public/tables/group_memberships/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "vybez_memberships_public".group_memberships;
COMMIT;  

