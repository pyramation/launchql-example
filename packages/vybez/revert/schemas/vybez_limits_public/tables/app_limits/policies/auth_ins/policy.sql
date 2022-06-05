-- Revert: schemas/vybez_limits_public/tables/app_limits/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "vybez_limits_public".app_limits;
COMMIT;  

