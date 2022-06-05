-- Revert: schemas/vybez_roles_public/procedures/verify_password/procedure from pg

BEGIN;


DROP FUNCTION "vybez_roles_public".verify_password;
COMMIT;  

