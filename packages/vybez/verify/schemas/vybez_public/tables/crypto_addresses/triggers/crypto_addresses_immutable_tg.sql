-- Verify: schemas/vybez_public/tables/crypto_addresses/triggers/crypto_addresses_immutable_tg on pg

BEGIN;
SELECT verify_trigger('vybez_public.crypto_addresses_immutable_tg');
COMMIT;  

