-- Revert: schemas/vybez_public/tables/users/columns/display_name/column from pg

BEGIN;


ALTER TABLE "vybez_public".users DROP COLUMN display_name;
COMMIT;  

