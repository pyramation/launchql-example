-- Revert: schemas/vybez_limits_private/procedures/app_limits_dec/procedure from pg

BEGIN;


DROP FUNCTION "vybez_limits_private".app_limits_dec;
COMMIT;  

