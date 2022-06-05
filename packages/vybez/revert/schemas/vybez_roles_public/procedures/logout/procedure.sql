-- Revert: schemas/vybez_roles_public/procedures/logout/procedure from pg

BEGIN;


DROP FUNCTION "vybez_roles_public".logout;

COMMIT;  

