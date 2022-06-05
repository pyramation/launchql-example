-- Revert: schemas/vybez_encrypted/procedures/verify/procedure from pg

BEGIN;


DROP FUNCTION "vybez_encrypted".verify;
COMMIT;  

