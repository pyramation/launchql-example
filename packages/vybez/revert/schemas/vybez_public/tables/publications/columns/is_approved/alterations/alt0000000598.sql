-- Revert: schemas/vybez_public/tables/publications/columns/is_approved/alterations/alt0000000598 from pg

BEGIN;


ALTER TABLE "vybez_public".publications 
    ALTER COLUMN is_approved DROP DEFAULT;

COMMIT;  

