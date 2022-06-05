-- Revert: schemas/vybez_public/tables/publications/columns/is_published/alterations/alt0000000600 from pg

BEGIN;


ALTER TABLE "vybez_public".publications 
    ALTER COLUMN is_published DROP DEFAULT;

COMMIT;  

