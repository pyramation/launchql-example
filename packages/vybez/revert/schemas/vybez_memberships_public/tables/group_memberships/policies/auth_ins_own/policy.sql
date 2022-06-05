-- Revert: schemas/vybez_memberships_public/tables/group_memberships/policies/auth_ins_own/policy from pg

BEGIN;
DROP POLICY auth_ins_own ON "vybez_memberships_public".group_memberships;
COMMIT;  

