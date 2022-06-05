-- Revert: schemas/vybez_memberships_private/tables/memberships_acl/columns/is_admin/alterations/alt0000000206 from pg

BEGIN;


ALTER TABLE "vybez_memberships_private".memberships_acl 
    ALTER COLUMN is_admin DROP DEFAULT;

COMMIT;  

