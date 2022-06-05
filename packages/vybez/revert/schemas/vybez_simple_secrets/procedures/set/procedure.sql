-- Revert: schemas/vybez_simple_secrets/procedures/set/procedure from pg

BEGIN;


DROP FUNCTION "vybez_simple_secrets".set;
COMMIT;  

