-- Revert: schemas/vybez_public/tables/publications/columns/id/column from pg

BEGIN;


ALTER TABLE "vybez_public".publications DROP COLUMN id;
COMMIT;  

