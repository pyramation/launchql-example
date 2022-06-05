-- Revert: schemas/vybez_permissions_public/tables/app_permissions/columns/bitnum/column from pg

BEGIN;


ALTER TABLE "vybez_permissions_public".app_permissions DROP COLUMN bitnum;
COMMIT;  

