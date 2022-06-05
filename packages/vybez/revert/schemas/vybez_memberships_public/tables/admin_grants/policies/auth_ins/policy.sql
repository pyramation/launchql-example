-- Revert: schemas/vybez_memberships_public/tables/admin_grants/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "vybez_memberships_public".admin_grants;
COMMIT;  

