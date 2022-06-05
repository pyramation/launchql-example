-- Revert: schemas/vybez_status_private/procedures/completed_step/procedure from pg

BEGIN;


DROP FUNCTION "vybez_status_private".completed_step;
COMMIT;  

