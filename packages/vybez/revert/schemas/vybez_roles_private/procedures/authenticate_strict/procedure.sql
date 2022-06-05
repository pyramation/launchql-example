-- Revert: schemas/vybez_roles_private/procedures/authenticate_strict/procedure from pg

BEGIN;


DROP FUNCTION "vybez_roles_private".authenticate_strict;
COMMIT;  

