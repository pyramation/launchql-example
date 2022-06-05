-- Revert: schemas/vybez_limits_private/trigger_fns/app_limits_upd_tg from pg

BEGIN;


DROP FUNCTION "vybez_limits_private".app_limits_upd_tg;
COMMIT;  

