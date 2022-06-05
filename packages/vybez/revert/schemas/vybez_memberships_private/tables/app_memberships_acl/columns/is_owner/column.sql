-- Revert: schemas/vybez_memberships_private/tables/app_memberships_acl/columns/is_owner/column from pg

BEGIN;


ALTER TABLE "vybez_memberships_private".app_memberships_acl DROP COLUMN is_owner;
COMMIT;  

