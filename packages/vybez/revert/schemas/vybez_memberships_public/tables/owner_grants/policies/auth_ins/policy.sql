-- Revert: schemas/vybez_memberships_public/tables/owner_grants/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "vybez_memberships_public".owner_grants;
COMMIT;  

