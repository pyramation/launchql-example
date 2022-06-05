-- Revert: schemas/vybez_memberships_private/tables/group_memberships_acl/table from pg

BEGIN;
DROP TABLE "vybez_memberships_private".group_memberships_acl;
COMMIT;  

