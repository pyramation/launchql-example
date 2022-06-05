-- Revert: schemas/vybez_memberships_public/tables/admin_grants/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "vybez_memberships_public".admin_grants;
COMMIT;  

