-- Verify: schemas/vybez_permissions_public/tables/group_member_permission_defaults/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'vybez_permissions_public.group_member_permission_defaults');
COMMIT;  

