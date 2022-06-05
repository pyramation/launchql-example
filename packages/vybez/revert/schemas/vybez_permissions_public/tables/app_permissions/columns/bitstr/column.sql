-- Revert: schemas/vybez_permissions_public/tables/app_permissions/columns/bitstr/column from pg

BEGIN;


ALTER TABLE "vybez_permissions_public".app_permissions DROP COLUMN bitstr;
COMMIT;  

