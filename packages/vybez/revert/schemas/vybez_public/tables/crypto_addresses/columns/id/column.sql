-- Revert: schemas/vybez_public/tables/crypto_addresses/columns/id/column from pg

BEGIN;


ALTER TABLE "vybez_public".crypto_addresses DROP COLUMN id;
COMMIT;  

