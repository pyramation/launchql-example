-- Revert: schemas/vybez_limits_private/trigger_fns/group_member_limits_dec_tg from pg

BEGIN;


DROP FUNCTION "vybez_limits_private".group_member_limits_dec_tg;
COMMIT;  

