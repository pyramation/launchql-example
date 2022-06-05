-- Revert: schemas/vybez_status_public/tables/app_level_requirements/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "vybez_status_public".app_level_requirements;
COMMIT;  

