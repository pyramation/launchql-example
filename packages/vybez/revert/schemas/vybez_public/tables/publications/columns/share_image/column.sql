-- Revert: schemas/vybez_public/tables/publications/columns/share_image/column from pg

BEGIN;


ALTER TABLE "vybez_public".publications DROP COLUMN share_image;
COMMIT;  

