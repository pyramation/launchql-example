-- Revert: schemas/vybez_public/tables/publications/columns/is_private/alterations/alt0000000601 from pg

BEGIN;


ALTER TABLE "vybez_public".publications 
    ALTER COLUMN is_private DROP NOT NULL;


COMMIT;  

