-- Revert: schemas/vybez_permissions_public/tables/membership_permissions/columns/bitnum/alterations/alt0000000177 from pg

BEGIN;
ALTER TABLE "vybez_permissions_public".membership_permissions DROP CONSTRAINT membership_permissions_bitnum_chk;
COMMIT;  

