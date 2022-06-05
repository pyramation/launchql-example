-- Revert: schemas/vybez_memberships_public/tables/app_owner_grants/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "vybez_memberships_public".app_owner_grants;
COMMIT;  

