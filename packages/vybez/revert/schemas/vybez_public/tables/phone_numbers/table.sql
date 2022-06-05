-- Revert: schemas/vybez_public/tables/phone_numbers/table from pg

BEGIN;
DROP TABLE "vybez_public".phone_numbers;
COMMIT;  

