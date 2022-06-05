-- Revert: schemas/vybez_roles_public/procedures/forgot_password/procedure from pg

BEGIN;


DROP FUNCTION "vybez_roles_public".forgot_password;
COMMIT;  

