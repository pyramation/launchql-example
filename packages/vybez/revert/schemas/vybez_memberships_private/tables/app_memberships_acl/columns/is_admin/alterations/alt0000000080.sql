-- Revert: schemas/vybez_memberships_private/tables/app_memberships_acl/columns/is_admin/alterations/alt0000000080 from pg

BEGIN;


ALTER TABLE "vybez_memberships_private".app_memberships_acl 
    ALTER COLUMN is_admin DROP DEFAULT;

COMMIT;  

