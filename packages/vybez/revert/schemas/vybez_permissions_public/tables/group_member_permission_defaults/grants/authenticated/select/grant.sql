-- Revert: schemas/vybez_permissions_public/tables/group_member_permission_defaults/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "vybez_permissions_public".group_member_permission_defaults FROM authenticated;
COMMIT;  

