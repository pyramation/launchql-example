-- Revert: schemas/vybez_memberships_public/tables/memberships/policies/auth_sel_own/policy from pg

BEGIN;
DROP POLICY auth_sel_own ON "vybez_memberships_public".memberships;
COMMIT;  

