-- Revert: schemas/vybez_public/tables/user_profiles/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "vybez_public".user_profiles;
COMMIT;  

