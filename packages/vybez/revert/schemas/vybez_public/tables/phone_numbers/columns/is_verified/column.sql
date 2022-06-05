-- Revert: schemas/vybez_public/tables/phone_numbers/columns/is_verified/column from pg

BEGIN;


ALTER TABLE "vybez_public".phone_numbers DROP COLUMN is_verified;
COMMIT;  

