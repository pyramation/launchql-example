-- Revert: schemas/vybez_permissions_public/tables/membership_permission_defaults/columns/permissions/alterations/alt0000000185 from pg

BEGIN;


ALTER TABLE "vybez_permissions_public".membership_permission_defaults 
    ALTER COLUMN permissions DROP DEFAULT;

COMMIT;  

