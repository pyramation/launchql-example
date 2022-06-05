-- Revert: schemas/vybez_memberships_private/trigger_fns/grants_apply_tg from pg

BEGIN;


DROP FUNCTION "vybez_memberships_private".grants_apply_tg;
COMMIT;  

