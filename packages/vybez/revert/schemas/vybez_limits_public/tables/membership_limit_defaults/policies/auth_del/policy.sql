-- Revert: schemas/vybez_limits_public/tables/membership_limit_defaults/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "vybez_limits_public".membership_limit_defaults;
COMMIT;  

