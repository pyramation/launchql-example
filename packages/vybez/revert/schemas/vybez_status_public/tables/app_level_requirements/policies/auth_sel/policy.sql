-- Revert: schemas/vybez_status_public/tables/app_level_requirements/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "vybez_status_public".app_level_requirements;
COMMIT;  

