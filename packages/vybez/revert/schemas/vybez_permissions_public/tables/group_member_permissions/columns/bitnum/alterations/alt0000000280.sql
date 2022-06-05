-- Revert: schemas/vybez_permissions_public/tables/group_member_permissions/columns/bitnum/alterations/alt0000000280 from pg

BEGIN;
ALTER TABLE "vybez_permissions_public".group_member_permissions DROP CONSTRAINT group_member_permissions_bitnum_chk;
COMMIT;  

