-- Verify: schemas/vybez_memberships_private/tables/memberships_acl/table on pg

BEGIN;
SELECT verify_table('vybez_memberships_private.memberships_acl');
COMMIT;  

