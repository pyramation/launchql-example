-- Revert: schemas/vybez_status_private/trigger_fns/tg_achv_tgl from pg

BEGIN;


DROP FUNCTION "vybez_status_private".tg_achv_tgl;
COMMIT;  

