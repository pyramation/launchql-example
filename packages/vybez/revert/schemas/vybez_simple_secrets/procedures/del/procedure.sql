-- Revert: schemas/vybez_simple_secrets/procedures/del/procedure from pg

BEGIN;


DROP FUNCTION "vybez_simple_secrets".del;
COMMIT;  

