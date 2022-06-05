-- Revert: schemas/vybez_limits_public/tables/app_limit_defaults/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "vybez_limits_public".app_limit_defaults;
COMMIT;  

