-- Revert: schemas/vybez_public/tables/user_settings/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "vybez_public".user_settings;
COMMIT;  

