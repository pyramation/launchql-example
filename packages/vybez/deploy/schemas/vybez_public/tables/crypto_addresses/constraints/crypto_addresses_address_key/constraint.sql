-- Deploy: schemas/vybez_public/tables/crypto_addresses/constraints/crypto_addresses_address_key/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/crypto_addresses/table

BEGIN;

ALTER TABLE "vybez_public".crypto_addresses
    ADD CONSTRAINT crypto_addresses_address_key UNIQUE (address);
COMMIT;
