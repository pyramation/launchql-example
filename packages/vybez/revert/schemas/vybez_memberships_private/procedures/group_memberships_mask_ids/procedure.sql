-- Revert: schemas/vybez_memberships_private/procedures/group_memberships_mask_ids/procedure from pg

BEGIN;


DROP FUNCTION "vybez_memberships_private".group_memberships_mask_ids;
COMMIT;  

