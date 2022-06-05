-- Revert: schemas/vybez_memberships_private/procedures/app_memberships_mask_check/procedure from pg

BEGIN;


DROP FUNCTION "vybez_memberships_private".app_memberships_mask_check;
COMMIT;  

