-- Revert: schemas/vybez_permissions_public/tables/app_permission_defaults/columns/id/alterations/alt0000000047 from pg

BEGIN;


ALTER TABLE "vybez_permissions_public".app_permission_defaults 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

