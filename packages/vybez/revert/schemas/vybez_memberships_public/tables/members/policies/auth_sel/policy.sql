-- Revert: schemas/vybez_memberships_public/tables/members/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "vybez_memberships_public".members;
COMMIT;  

