-- Revert: schemas/vybez_public/tables/groups/columns/bounds/column from pg

BEGIN;


ALTER TABLE "vybez_public".groups DROP COLUMN bounds;
COMMIT;  

