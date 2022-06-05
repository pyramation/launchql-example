-- Revert: schemas/vybez_permissions_public/tables/group_member_permission_defaults/table from pg

BEGIN;
DROP TABLE "vybez_permissions_public".group_member_permission_defaults;
COMMIT;  

