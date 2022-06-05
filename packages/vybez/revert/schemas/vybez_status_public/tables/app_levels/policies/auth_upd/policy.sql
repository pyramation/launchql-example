-- Revert: schemas/vybez_status_public/tables/app_levels/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "vybez_status_public".app_levels;
COMMIT;  

