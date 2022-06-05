-- Revert: schemas/vybez_memberships_private/trigger_fns/app_mbr_create from pg

BEGIN;


DROP FUNCTION "vybez_memberships_private".app_mbr_create;
COMMIT;  

