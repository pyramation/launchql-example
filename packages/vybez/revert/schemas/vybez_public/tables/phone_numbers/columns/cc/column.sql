-- Revert: schemas/vybez_public/tables/phone_numbers/columns/cc/column from pg

BEGIN;


ALTER TABLE "vybez_public".phone_numbers DROP COLUMN cc;
COMMIT;  

