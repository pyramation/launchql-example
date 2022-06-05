-- Revert: schemas/vybez_roles_public/procedures/current_user_agent/procedure from pg

BEGIN;


DROP FUNCTION "vybez_roles_public".current_user_agent;

COMMIT;  

