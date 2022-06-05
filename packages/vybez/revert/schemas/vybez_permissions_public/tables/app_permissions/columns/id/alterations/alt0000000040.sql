-- Revert: schemas/vybez_permissions_public/tables/app_permissions/columns/id/alterations/alt0000000040 from pg

BEGIN;


ALTER TABLE "vybez_permissions_public".app_permissions 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

