-- Revert: schemas/vybez_memberships_private/trigger_fns/app_memberships_insert_acl_tg from pg

BEGIN;


DROP FUNCTION "vybez_memberships_private".app_memberships_insert_acl_tg;
COMMIT;  

