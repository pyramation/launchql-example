-- Revert: schemas/vybez_memberships_private/tables/app_memberships_acl/columns/is_owner/alterations/alt0000000078 from pg

BEGIN;


ALTER TABLE "vybez_memberships_private".app_memberships_acl 
    ALTER COLUMN is_owner DROP DEFAULT;

COMMIT;  

