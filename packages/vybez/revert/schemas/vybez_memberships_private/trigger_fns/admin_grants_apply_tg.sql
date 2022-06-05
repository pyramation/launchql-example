-- Revert: schemas/vybez_memberships_private/trigger_fns/admin_grants_apply_tg from pg

BEGIN;


DROP FUNCTION "vybez_memberships_private".admin_grants_apply_tg;
COMMIT;  

