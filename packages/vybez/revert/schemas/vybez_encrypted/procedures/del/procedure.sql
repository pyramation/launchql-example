-- Revert: schemas/vybez_encrypted/procedures/del/procedure from pg

BEGIN;


DROP FUNCTION "vybez_encrypted".del;
COMMIT;  

