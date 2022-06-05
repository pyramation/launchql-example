-- Revert: schemas/vybez_encrypted/procedures/get/procedure from pg

BEGIN;


DROP FUNCTION "vybez_encrypted".get;
COMMIT;  

