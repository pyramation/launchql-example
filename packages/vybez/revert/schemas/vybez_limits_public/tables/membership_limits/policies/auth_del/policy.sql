-- Revert: schemas/vybez_limits_public/tables/membership_limits/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "vybez_limits_public".membership_limits;
COMMIT;  

