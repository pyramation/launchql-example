-- Revert: schemas/vybez_limits_public/tables/app_limits/policies/auth_sel_own/policy from pg

BEGIN;
DROP POLICY auth_sel_own ON "vybez_limits_public".app_limits;
COMMIT;  

