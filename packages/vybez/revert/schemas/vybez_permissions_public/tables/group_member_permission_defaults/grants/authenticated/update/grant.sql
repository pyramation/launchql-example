-- Revert: schemas/vybez_permissions_public/tables/group_member_permission_defaults/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "vybez_permissions_public".group_member_permission_defaults FROM authenticated;
COMMIT;  

