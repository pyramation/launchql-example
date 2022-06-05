-- Revert: schemas/vybez_permissions_public/tables/group_member_permissions/columns/bitnum/column from pg

BEGIN;


ALTER TABLE "vybez_permissions_public".group_member_permissions DROP COLUMN bitnum;
COMMIT;  

