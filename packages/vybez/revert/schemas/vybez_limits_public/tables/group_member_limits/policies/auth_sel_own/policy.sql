-- Revert: schemas/vybez_limits_public/tables/group_member_limits/policies/auth_sel_own/policy from pg

BEGIN;
DROP POLICY auth_sel_own ON "vybez_limits_public".group_member_limits;
COMMIT;  

