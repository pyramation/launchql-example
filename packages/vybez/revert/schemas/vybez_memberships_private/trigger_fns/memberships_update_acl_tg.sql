-- Revert: schemas/vybez_memberships_private/trigger_fns/memberships_update_acl_tg from pg

BEGIN;


DROP FUNCTION "vybez_memberships_private".memberships_update_acl_tg;
COMMIT;  

