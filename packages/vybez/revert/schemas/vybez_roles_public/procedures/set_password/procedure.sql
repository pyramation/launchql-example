-- Revert: schemas/vybez_roles_public/procedures/set_password/procedure from pg

BEGIN;


DROP FUNCTION "vybez_roles_public".set_password;
COMMIT;  

