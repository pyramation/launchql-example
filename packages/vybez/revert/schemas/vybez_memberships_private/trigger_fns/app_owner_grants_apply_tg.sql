-- Revert: schemas/vybez_memberships_private/trigger_fns/app_owner_grants_apply_tg from pg

BEGIN;


DROP FUNCTION "vybez_memberships_private".app_owner_grants_apply_tg;
COMMIT;  

