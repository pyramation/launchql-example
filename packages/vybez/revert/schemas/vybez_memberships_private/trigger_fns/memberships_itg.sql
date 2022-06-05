-- Revert: schemas/vybez_memberships_private/trigger_fns/memberships_itg from pg

BEGIN;


DROP FUNCTION "vybez_memberships_private".memberships_itg;
COMMIT;  

