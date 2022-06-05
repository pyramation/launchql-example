-- Revert: schemas/vybez_public/tables/crypto_addresses/triggers/crypto_addresses_immutable_tg from pg

BEGIN;
DROP TRIGGER crypto_addresses_immutable_tg ON "vybez_public".crypto_addresses;
COMMIT;  

