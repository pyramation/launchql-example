-- Revert: schemas/vybez_public/tables/groups/columns/name/column from pg

BEGIN;


ALTER TABLE "vybez_public".groups DROP COLUMN name;
COMMIT;  

