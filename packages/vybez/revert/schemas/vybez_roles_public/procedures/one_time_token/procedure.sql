-- Revert: schemas/vybez_roles_public/procedures/one_time_token/procedure from pg

BEGIN;


DROP FUNCTION "vybez_roles_public".one_time_token;
COMMIT;  

