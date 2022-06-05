-- Revert: schemas/vybez_roles_public/procedures/register/procedure from pg

BEGIN;


DROP FUNCTION "vybez_roles_public".register;

COMMIT;  

