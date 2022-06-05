-- Revert: schemas/vybez_public/tables/publications/columns/limited_to_location/column from pg

BEGIN;


ALTER TABLE "vybez_public".publications DROP COLUMN limited_to_location;
COMMIT;  

