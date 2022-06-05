-- Revert: schemas/vybez_public/tables/crypto_addresses/columns/is_primary/alterations/alt0000000461 from pg

BEGIN;


ALTER TABLE "vybez_public".crypto_addresses 
    ALTER COLUMN is_primary DROP DEFAULT;

COMMIT;  

