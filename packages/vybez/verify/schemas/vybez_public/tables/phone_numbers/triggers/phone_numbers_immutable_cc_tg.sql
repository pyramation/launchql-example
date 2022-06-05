-- Verify: schemas/vybez_public/tables/phone_numbers/triggers/phone_numbers_immutable_cc_tg on pg

BEGIN;
SELECT verify_trigger('vybez_public.phone_numbers_immutable_cc_tg');
COMMIT;  

