-- Revert: schemas/vybez_memberships_private/procedures/memberships_perm_check/procedure from pg

BEGIN;


DROP FUNCTION "vybez_memberships_private".memberships_perm_check;
COMMIT;  

