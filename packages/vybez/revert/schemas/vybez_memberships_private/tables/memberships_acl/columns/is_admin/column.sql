-- Revert: schemas/vybez_memberships_private/tables/memberships_acl/columns/is_admin/column from pg

BEGIN;


ALTER TABLE "vybez_memberships_private".memberships_acl DROP COLUMN is_admin;
COMMIT;  

