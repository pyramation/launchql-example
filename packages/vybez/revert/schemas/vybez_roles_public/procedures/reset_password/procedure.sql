-- Revert: schemas/vybez_roles_public/procedures/reset_password/procedure from pg

BEGIN;


DROP FUNCTION "vybez_roles_public".reset_password;

COMMIT;  

