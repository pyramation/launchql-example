-- Revert: schemas/vybez_memberships_private/tables/app_memberships_acl/table from pg

BEGIN;
DROP TABLE "vybez_memberships_private".app_memberships_acl;
COMMIT;  

