-- Revert: schemas/vybez_permissions_public/tables/group_member_permission_defaults/columns/id/column from pg

BEGIN;


ALTER TABLE "vybez_permissions_public".group_member_permission_defaults DROP COLUMN id;
COMMIT;  

