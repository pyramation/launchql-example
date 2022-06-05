-- Verify: schemas/vybez_limits_public/tables/group_member_limits/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'vybez_limits_public.group_member_limits');
COMMIT;  

