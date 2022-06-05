-- Revert: schemas/vybez_public/tables/publications/columns/id/alterations/alt0000000595 from pg

BEGIN;


ALTER TABLE "vybez_public".publications 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

