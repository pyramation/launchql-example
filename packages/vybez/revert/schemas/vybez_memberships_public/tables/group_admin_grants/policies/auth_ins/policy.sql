-- Revert: schemas/vybez_memberships_public/tables/group_admin_grants/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "vybez_memberships_public".group_admin_grants;
COMMIT;  

