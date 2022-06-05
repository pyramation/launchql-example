-- Revert: schemas/vybez_simple_secrets/procedures/get/procedure from pg

BEGIN;


DROP FUNCTION "vybez_simple_secrets".get;
COMMIT;  

