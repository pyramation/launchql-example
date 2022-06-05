-- Revert: schemas/vybez_limits_public/tables/group_member_limits/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "vybez_limits_public".group_member_limits;
COMMIT;  

