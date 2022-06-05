-- Revert: schemas/vybez_private/trigger_fns/phone_numbers_insert_tg from pg

BEGIN;


DROP TRIGGER trigger_name
    ON "vybez_public".phone_numbers;

DROP FUNCTION "vybez_private".phone_numbers_insert_tg;

COMMIT;  

