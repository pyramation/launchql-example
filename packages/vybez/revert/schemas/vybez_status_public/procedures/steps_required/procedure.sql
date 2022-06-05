-- Revert: schemas/vybez_status_public/procedures/steps_required/procedure from pg

BEGIN;


DROP FUNCTION function_schema.steps_required;
COMMIT;  

