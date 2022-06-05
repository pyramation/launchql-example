-- Revert: schemas/vybez_limits_private/procedures/membership_limits_dec/procedure from pg

BEGIN;


DROP FUNCTION "vybez_limits_private".membership_limits_dec;
COMMIT;  

