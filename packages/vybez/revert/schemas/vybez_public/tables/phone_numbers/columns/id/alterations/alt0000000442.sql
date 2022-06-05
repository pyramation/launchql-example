-- Revert: schemas/vybez_public/tables/phone_numbers/columns/id/alterations/alt0000000442 from pg

BEGIN;


ALTER TABLE "vybez_public".phone_numbers 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

