-- Revert: schemas/vybez_permissions_public/tables/group_member_permission_defaults/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "vybez_permissions_public".group_member_permission_defaults FROM authenticated;
COMMIT;  

