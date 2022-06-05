-- Revert: schemas/vybez_memberships_private/trigger_fns/membership_mbr_create from pg

BEGIN;


DROP FUNCTION "vybez_memberships_private".membership_mbr_create;
COMMIT;  

