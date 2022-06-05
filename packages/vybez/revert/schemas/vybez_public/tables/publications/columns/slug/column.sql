-- Revert: schemas/vybez_public/tables/publications/columns/slug/column from pg

BEGIN;


ALTER TABLE "vybez_public".publications DROP COLUMN slug;
COMMIT;  

