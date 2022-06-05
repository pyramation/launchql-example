-- Revert: schemas/vybez_permissions_public/procedures/membership_permissions_get_mask/procedure from pg

BEGIN;


DROP FUNCTION "vybez_permissions_public".membership_permissions_get_mask;
COMMIT;  

