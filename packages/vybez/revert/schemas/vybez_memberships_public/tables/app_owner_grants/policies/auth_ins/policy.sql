-- Revert: schemas/vybez_memberships_public/tables/app_owner_grants/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "vybez_memberships_public".app_owner_grants;
COMMIT;  

