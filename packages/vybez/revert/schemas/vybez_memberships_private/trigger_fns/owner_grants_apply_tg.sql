-- Revert: schemas/vybez_memberships_private/trigger_fns/owner_grants_apply_tg from pg

BEGIN;


DROP FUNCTION "vybez_memberships_private".owner_grants_apply_tg;
COMMIT;  

