-- Revert: schemas/vybez_limits_private/trigger_fns/membership_limits_dec_tg from pg

BEGIN;


DROP FUNCTION "vybez_limits_private".membership_limits_dec_tg;
COMMIT;  

