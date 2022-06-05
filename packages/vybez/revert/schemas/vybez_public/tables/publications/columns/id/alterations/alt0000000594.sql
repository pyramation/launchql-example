-- Revert: schemas/vybez_public/tables/publications/columns/id/alterations/alt0000000594 from pg

BEGIN;


ALTER TABLE "vybez_public".publications 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

