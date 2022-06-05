-- Revert: schemas/vybez_status_public/tables/app_levels/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "vybez_status_public".app_levels;
COMMIT;  

