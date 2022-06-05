-- Revert: schemas/vybez_roles_public/procedures/get_current_user/procedure from pg

BEGIN;


DROP FUNCTION "vybez_roles_public".get_current_user;
COMMIT;  

