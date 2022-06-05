-- Revert: schemas/vybez_memberships_private/trigger_fns/group_memberships_itg from pg

BEGIN;


DROP FUNCTION "vybez_memberships_private".group_memberships_itg;
COMMIT;  

