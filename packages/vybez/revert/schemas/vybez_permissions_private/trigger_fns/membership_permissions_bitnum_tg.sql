-- Revert: schemas/vybez_permissions_private/trigger_fns/membership_permissions_bitnum_tg from pg

BEGIN;


DROP FUNCTION "vybez_permissions_private".membership_permissions_bitnum_tg;
COMMIT;  

