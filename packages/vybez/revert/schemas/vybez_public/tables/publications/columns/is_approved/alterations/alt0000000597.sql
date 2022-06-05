-- Revert: schemas/vybez_public/tables/publications/columns/is_approved/alterations/alt0000000597 from pg

BEGIN;


ALTER TABLE "vybez_public".publications 
    ALTER COLUMN is_approved DROP NOT NULL;


COMMIT;  

