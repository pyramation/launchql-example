-- Revert: schemas/vybez_public/tables/groups/columns/header_image/column from pg

BEGIN;


ALTER TABLE "vybez_public".groups DROP COLUMN header_image;
COMMIT;  

