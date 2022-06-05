-- Revert: schemas/vybez_roles_public/procedures/get_current_user_id/procedure from pg

BEGIN;


DROP FUNCTION "vybez_roles_public".get_current_user_id;

COMMIT;  

