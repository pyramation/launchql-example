-- Revert: schemas/vybez_memberships_private/procedures/memberships_ids/procedure from pg

BEGIN;


DROP FUNCTION "vybez_memberships_private".memberships_ids;
COMMIT;  

