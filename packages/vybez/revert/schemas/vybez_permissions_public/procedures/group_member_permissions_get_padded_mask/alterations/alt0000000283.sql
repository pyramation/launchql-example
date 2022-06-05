-- Revert: schemas/vybez_permissions_public/procedures/group_member_permissions_get_padded_mask/alterations/alt0000000283 from pg

BEGIN;


DROP FUNCTION "vybez_permissions_public".group_member_permissions_get_padded_mask;

COMMIT;  

