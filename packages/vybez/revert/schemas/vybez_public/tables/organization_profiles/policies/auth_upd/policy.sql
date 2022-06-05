-- Revert: schemas/vybez_public/tables/organization_profiles/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "vybez_public".organization_profiles;
COMMIT;  

