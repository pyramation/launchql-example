-- Revert: schemas/vybez_memberships_private/tables/memberships_acl/columns/permissions/column from pg

BEGIN;


ALTER TABLE "vybez_memberships_private".memberships_acl DROP COLUMN permissions;
COMMIT;  

