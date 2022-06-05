-- Revert: schemas/vybez_permissions_public/procedures/app_permissions_get_padded_mask/alterations/alt0000000044 from pg

BEGIN;


DROP FUNCTION "vybez_permissions_public".app_permissions_get_padded_mask;

COMMIT;  

