-- Revert: schemas/vybez_roles_private/procedures/authenticate/procedure from pg

BEGIN;


DROP FUNCTION "vybez_roles_private".authenticate;
COMMIT;  

