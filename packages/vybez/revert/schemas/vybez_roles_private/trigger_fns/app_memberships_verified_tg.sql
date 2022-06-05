-- Revert: schemas/vybez_roles_private/trigger_fns/app_memberships_verified_tg from pg

BEGIN;


DROP FUNCTION "vybez_roles_private".app_memberships_verified_tg;
COMMIT;  

