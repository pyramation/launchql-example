-- Revert: schemas/vybez_permissions_public/tables/membership_permission_defaults/table from pg

BEGIN;
DROP TABLE "vybez_permissions_public".membership_permission_defaults;
COMMIT;  

