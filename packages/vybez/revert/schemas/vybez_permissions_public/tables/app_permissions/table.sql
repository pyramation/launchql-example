-- Revert: schemas/vybez_permissions_public/tables/app_permissions/table from pg

BEGIN;
DROP TABLE "vybez_permissions_public".app_permissions;
COMMIT;  

