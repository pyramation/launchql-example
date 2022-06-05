-- Verify: schemas/vybez_limits_public/tables/group_member_limits/policies/auth_sel_own/policy on pg

BEGIN;
SELECT verify_policy('auth_sel_own', 'vybez_limits_public.group_member_limits');
COMMIT;  

