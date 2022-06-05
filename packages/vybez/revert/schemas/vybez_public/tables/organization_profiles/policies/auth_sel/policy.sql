-- Revert: schemas/vybez_public/tables/organization_profiles/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "vybez_public".organization_profiles;
COMMIT;  

