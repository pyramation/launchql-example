-- Revert: schemas/vybez_permissions_public/tables/app_permission_defaults/columns/permissions/column from pg

BEGIN;


ALTER TABLE "vybez_permissions_public".app_permission_defaults DROP COLUMN permissions;
COMMIT;  

