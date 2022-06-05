-- Revert: schemas/vybez_public/tables/publications/columns/photo/column from pg

BEGIN;


ALTER TABLE "vybez_public".publications DROP COLUMN photo;
COMMIT;  

