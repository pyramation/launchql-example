-- Revert: schemas/vybez_permissions_public/tables/membership_permissions/table from pg

BEGIN;
DROP TABLE "vybez_permissions_public".membership_permissions;
COMMIT;  

