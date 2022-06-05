-- Revert: schemas/vybez_status_private/trigger_fns/tg_upd_achv from pg

BEGIN;


DROP FUNCTION "vybez_status_private".tg_upd_achv;
COMMIT;  

