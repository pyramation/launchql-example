-- Revert: schemas/vybez_public/tables/user_profiles/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "vybez_public".user_profiles;
COMMIT;  

