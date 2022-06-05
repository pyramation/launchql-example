-- Revert: schemas/vybez_public/tables/crypto_addresses/table from pg

BEGIN;
DROP TABLE "vybez_public".crypto_addresses;
COMMIT;  

