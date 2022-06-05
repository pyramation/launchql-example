-- Revert: schemas/vybez_memberships_private/trigger_fns/create_groups_add_mbrs from pg

BEGIN;


DROP FUNCTION "vybez_memberships_private".create_groups_add_mbrs;
COMMIT;  

