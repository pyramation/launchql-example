-- Revert: schemas/vybez_public/tables/crypto_addresses/columns/is_verified/column from pg

BEGIN;


ALTER TABLE "vybez_public".crypto_addresses DROP COLUMN is_verified;
COMMIT;  

