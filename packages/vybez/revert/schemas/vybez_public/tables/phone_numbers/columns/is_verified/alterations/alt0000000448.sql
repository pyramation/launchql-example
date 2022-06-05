-- Revert: schemas/vybez_public/tables/phone_numbers/columns/is_verified/alterations/alt0000000448 from pg

BEGIN;


ALTER TABLE "vybez_public".phone_numbers 
    ALTER COLUMN is_verified DROP DEFAULT;

COMMIT;  

