-- Revert: schemas/vybez_permissions_public/procedures/membership_permissions_get_padded_mask/alterations/alt0000000180 from pg

BEGIN;


DROP FUNCTION "vybez_permissions_public".membership_permissions_get_padded_mask;

COMMIT;  

