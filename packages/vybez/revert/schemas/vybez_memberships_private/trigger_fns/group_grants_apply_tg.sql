-- Revert: schemas/vybez_memberships_private/trigger_fns/group_grants_apply_tg from pg

BEGIN;


DROP FUNCTION "vybez_memberships_private".group_grants_apply_tg;
COMMIT;  

