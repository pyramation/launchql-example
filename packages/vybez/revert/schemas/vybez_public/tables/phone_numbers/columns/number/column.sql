-- Revert: schemas/vybez_public/tables/phone_numbers/columns/number/column from pg

BEGIN;


ALTER TABLE "vybez_public".phone_numbers DROP COLUMN number;
COMMIT;  

