-- Revert: schemas/vybez_memberships_private/trigger_fns/group_memberships_utg from pg

BEGIN;


DROP FUNCTION "vybez_memberships_private".group_memberships_utg;
COMMIT;  

