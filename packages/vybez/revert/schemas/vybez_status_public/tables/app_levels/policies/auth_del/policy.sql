-- Revert: schemas/vybez_status_public/tables/app_levels/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "vybez_status_public".app_levels;
COMMIT;  

