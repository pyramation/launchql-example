-- Revert: schemas/vybez_permissions_public/tables/membership_permissions/columns/id/column from pg

BEGIN;


ALTER TABLE "vybez_permissions_public".membership_permissions DROP COLUMN id;
COMMIT;  

