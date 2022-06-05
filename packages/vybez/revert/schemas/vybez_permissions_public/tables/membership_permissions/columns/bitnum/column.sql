-- Revert: schemas/vybez_permissions_public/tables/membership_permissions/columns/bitnum/column from pg

BEGIN;


ALTER TABLE "vybez_permissions_public".membership_permissions DROP COLUMN bitnum;
COMMIT;  

