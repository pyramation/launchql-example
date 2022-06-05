-- Revert: schemas/vybez_permissions_public/procedures/group_member_permissions_get_mask/procedure from pg

BEGIN;


DROP FUNCTION "vybez_permissions_public".group_member_permissions_get_mask;
COMMIT;  

