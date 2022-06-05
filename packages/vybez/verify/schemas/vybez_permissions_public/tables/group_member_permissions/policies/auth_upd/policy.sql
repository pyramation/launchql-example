-- Verify: schemas/vybez_permissions_public/tables/group_member_permissions/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'vybez_permissions_public.group_member_permissions');
COMMIT;  

