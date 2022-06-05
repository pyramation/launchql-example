-- Revert: schemas/vybez_memberships_private/trigger_fns/memberships_insert_acl_tg from pg

BEGIN;


DROP FUNCTION "vybez_memberships_private".memberships_insert_acl_tg;
COMMIT;  

