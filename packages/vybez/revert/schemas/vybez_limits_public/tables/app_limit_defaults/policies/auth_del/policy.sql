-- Revert: schemas/vybez_limits_public/tables/app_limit_defaults/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "vybez_limits_public".app_limit_defaults;
COMMIT;  

