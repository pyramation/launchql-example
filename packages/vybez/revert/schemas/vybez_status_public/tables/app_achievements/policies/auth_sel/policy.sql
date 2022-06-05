-- Revert: schemas/vybez_status_public/tables/app_achievements/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "vybez_status_public".app_achievements;
COMMIT;  

