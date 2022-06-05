-- Revert: schemas/vybez_status_private/procedures/incompleted_step/procedure from pg

BEGIN;


DROP FUNCTION "vybez_status_private".incompleted_step;
COMMIT;  

