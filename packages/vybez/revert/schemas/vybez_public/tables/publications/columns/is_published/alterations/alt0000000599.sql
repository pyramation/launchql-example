-- Revert: schemas/vybez_public/tables/publications/columns/is_published/alterations/alt0000000599 from pg

BEGIN;


ALTER TABLE "vybez_public".publications 
    ALTER COLUMN is_published DROP NOT NULL;


COMMIT;  

