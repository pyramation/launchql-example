-- Revert: schemas/vybez_public/tables/organization_profiles/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "vybez_public".organization_profiles;
COMMIT;  

