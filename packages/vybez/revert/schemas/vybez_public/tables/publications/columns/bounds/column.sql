-- Revert: schemas/vybez_public/tables/publications/columns/bounds/column from pg

BEGIN;


ALTER TABLE "vybez_public".publications DROP COLUMN bounds;
COMMIT;  

