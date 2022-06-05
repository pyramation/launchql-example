-- Revert: schemas/vybez_permissions_public/tables/group_member_permissions/table from pg

BEGIN;
DROP TABLE "vybez_permissions_public".group_member_permissions;
COMMIT;  

