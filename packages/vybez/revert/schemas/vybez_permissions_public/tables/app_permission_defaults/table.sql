-- Revert: schemas/vybez_permissions_public/tables/app_permission_defaults/table from pg

BEGIN;
DROP TABLE "vybez_permissions_public".app_permission_defaults;
COMMIT;  

