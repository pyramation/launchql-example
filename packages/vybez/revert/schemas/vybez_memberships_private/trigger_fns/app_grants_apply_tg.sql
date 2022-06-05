-- Revert: schemas/vybez_memberships_private/trigger_fns/app_grants_apply_tg from pg

BEGIN;


DROP FUNCTION "vybez_memberships_private".app_grants_apply_tg;
COMMIT;  

