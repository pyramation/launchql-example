-- Revert: schemas/vybez_public/tables/phone_numbers/columns/number/alterations/alt0000000446 from pg

BEGIN;


ALTER TABLE "vybez_public".phone_numbers 
    ALTER COLUMN number DROP NOT NULL;


COMMIT;  

