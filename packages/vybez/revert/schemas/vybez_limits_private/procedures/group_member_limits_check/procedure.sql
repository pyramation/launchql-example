-- Revert: schemas/vybez_limits_private/procedures/group_member_limits_check/procedure from pg

BEGIN;


DROP FUNCTION "vybez_limits_private".group_member_limits_check;
COMMIT;  

