-- Revert: schemas/vybez_private/trigger_fns/crypto_addresses_insert_tg from pg

BEGIN;


DROP TRIGGER trigger_name
    ON "vybez_public".crypto_addresses;

DROP FUNCTION "vybez_private".crypto_addresses_insert_tg;

COMMIT;  

