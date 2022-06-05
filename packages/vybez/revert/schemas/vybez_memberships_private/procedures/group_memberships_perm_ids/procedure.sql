-- Revert: schemas/vybez_memberships_private/procedures/group_memberships_perm_ids/procedure from pg

BEGIN;


DROP FUNCTION "vybez_memberships_private".group_memberships_perm_ids;
COMMIT;  

