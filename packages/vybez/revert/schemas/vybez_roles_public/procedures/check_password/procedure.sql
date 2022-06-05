-- Revert: schemas/vybez_roles_public/procedures/check_password/procedure from pg

BEGIN;


DROP FUNCTION "vybez_roles_public".check_password;
COMMIT;  

