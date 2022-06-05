-- Revert: schemas/vybez_public/tables/phone_numbers/columns/cc/alterations/alt0000000445 from pg

BEGIN;


ALTER TABLE "vybez_public".phone_numbers 
    ALTER COLUMN cc DROP NOT NULL;


COMMIT;  

