-- Revert: schemas/vybez_memberships_private/procedures/memberships_mask_check/procedure from pg

BEGIN;


DROP FUNCTION "vybez_memberships_private".memberships_mask_check;
COMMIT;  

