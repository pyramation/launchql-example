-- Revert: schemas/vybez_permissions_public/tables/app_permissions/columns/bitstr/alterations/alt0000000043 from pg

BEGIN;


ALTER TABLE "vybez_permissions_public".app_permissions 
    ALTER COLUMN bitstr DROP DEFAULT;

COMMIT;  

