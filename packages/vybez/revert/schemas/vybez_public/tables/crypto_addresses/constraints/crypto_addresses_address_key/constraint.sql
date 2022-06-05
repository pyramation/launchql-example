-- Revert: schemas/vybez_public/tables/crypto_addresses/constraints/crypto_addresses_address_key/constraint from pg

BEGIN;


ALTER TABLE "vybez_public".crypto_addresses 
    DROP CONSTRAINT crypto_addresses_address_key;

COMMIT;  

