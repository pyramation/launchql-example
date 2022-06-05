-- Revert: schemas/vybez_limits_public/tables/app_limits/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "vybez_limits_public".app_limits;
COMMIT;  

