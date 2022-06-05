-- Revert: schemas/vybez_public/tables/phone_numbers/columns/is_primary/column from pg

BEGIN;


ALTER TABLE "vybez_public".phone_numbers DROP COLUMN is_primary;
COMMIT;  

