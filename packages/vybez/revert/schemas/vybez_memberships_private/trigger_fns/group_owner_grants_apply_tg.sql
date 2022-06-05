-- Revert: schemas/vybez_memberships_private/trigger_fns/group_owner_grants_apply_tg from pg

BEGIN;


DROP FUNCTION "vybez_memberships_private".group_owner_grants_apply_tg;
COMMIT;  

