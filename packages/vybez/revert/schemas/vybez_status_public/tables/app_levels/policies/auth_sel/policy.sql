-- Revert: schemas/vybez_status_public/tables/app_levels/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "vybez_status_public".app_levels;
COMMIT;  

