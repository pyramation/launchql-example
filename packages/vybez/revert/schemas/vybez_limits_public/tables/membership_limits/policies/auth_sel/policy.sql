-- Revert: schemas/vybez_limits_public/tables/membership_limits/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "vybez_limits_public".membership_limits;
COMMIT;  

