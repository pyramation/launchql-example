-- Revert: schemas/vybez_public/tables/publications/columns/limited_to_location/alterations/alt0000000603 from pg

BEGIN;


ALTER TABLE "vybez_public".publications 
    ALTER COLUMN limited_to_location DROP DEFAULT;

COMMIT;  

