-- Revert: schemas/vybez_memberships_private/trigger_fns/memberships_delete_acl_tg from pg

BEGIN;


DROP FUNCTION "vybez_memberships_private".memberships_delete_acl_tg;
COMMIT;  

