-- Verify: schemas/vybez_memberships_private/tables/app_memberships_acl/table on pg

BEGIN;
SELECT verify_table('vybez_memberships_private.app_memberships_acl');
COMMIT;  

