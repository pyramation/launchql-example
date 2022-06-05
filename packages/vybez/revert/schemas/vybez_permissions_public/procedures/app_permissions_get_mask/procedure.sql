-- Revert: schemas/vybez_permissions_public/procedures/app_permissions_get_mask/procedure from pg

BEGIN;


DROP FUNCTION "vybez_permissions_public".app_permissions_get_mask;
COMMIT;  

