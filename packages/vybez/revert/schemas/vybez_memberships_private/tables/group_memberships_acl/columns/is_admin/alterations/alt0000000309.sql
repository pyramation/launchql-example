-- Revert: schemas/vybez_memberships_private/tables/group_memberships_acl/columns/is_admin/alterations/alt0000000309 from pg

BEGIN;


ALTER TABLE "vybez_memberships_private".group_memberships_acl 
    ALTER COLUMN is_admin DROP DEFAULT;

COMMIT;  

