-- Revert: schemas/vybez_public/tables/user_settings/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "vybez_public".user_settings;
COMMIT;  

