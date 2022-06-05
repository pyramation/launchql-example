-- Revert: schemas/vybez_public/tables/user_profiles/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "vybez_public".user_profiles;
COMMIT;  

