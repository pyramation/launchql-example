-- Revert: schemas/vybez_public/tables/crypto_addresses/columns/address/column from pg

BEGIN;


ALTER TABLE "vybez_public".crypto_addresses DROP COLUMN address;
COMMIT;  

