-- Verify: schemas/vybez_limits_public/tables/group_member_limits/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'vybez_limits_public.group_member_limits');
COMMIT;  

