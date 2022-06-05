-- Revert: schemas/vybez_public/tables/phone_numbers/columns/is_primary/alterations/alt0000000450 from pg

BEGIN;


ALTER TABLE "vybez_public".phone_numbers 
    ALTER COLUMN is_primary DROP DEFAULT;

COMMIT;  

