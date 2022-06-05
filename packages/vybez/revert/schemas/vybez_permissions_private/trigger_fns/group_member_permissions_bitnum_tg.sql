-- Revert: schemas/vybez_permissions_private/trigger_fns/group_member_permissions_bitnum_tg from pg

BEGIN;


DROP FUNCTION "vybez_permissions_private".group_member_permissions_bitnum_tg;
COMMIT;  

