-- Revert: schemas/vybez_status_public/procedures/steps_achieved/procedure from pg

BEGIN;


DROP FUNCTION function_schema.steps_achieved;
COMMIT;  

