-- Revert: schemas/vybez_public/tables/user_settings/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "vybez_public".user_settings;
COMMIT;  

