-- Revert: schemas/vybez_public/tables/groups/columns/image/column from pg

BEGIN;


ALTER TABLE "vybez_public".groups DROP COLUMN image;
COMMIT;  

