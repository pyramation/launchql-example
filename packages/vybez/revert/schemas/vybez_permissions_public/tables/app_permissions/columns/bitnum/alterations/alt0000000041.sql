-- Revert: schemas/vybez_permissions_public/tables/app_permissions/columns/bitnum/alterations/alt0000000041 from pg

BEGIN;
ALTER TABLE "vybez_permissions_public".app_permissions DROP CONSTRAINT app_permissions_bitnum_chk;
COMMIT;  

