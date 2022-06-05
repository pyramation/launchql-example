-- Revert: schemas/vybez_roles_public/procedures/login/procedure from pg

BEGIN;


DROP FUNCTION "vybez_roles_public".login;
COMMIT;  

