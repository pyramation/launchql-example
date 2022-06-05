-- Revert: schemas/vybez_public/tables/publications/columns/location/column from pg

BEGIN;


ALTER TABLE "vybez_public".publications DROP COLUMN location;
COMMIT;  

