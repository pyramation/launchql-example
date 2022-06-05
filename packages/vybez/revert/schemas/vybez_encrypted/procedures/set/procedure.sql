-- Revert: schemas/vybez_encrypted/procedures/set/procedure from pg

BEGIN;


DROP FUNCTION "vybez_encrypted".set;
COMMIT;  

