-- Revert: schemas/vybez_memberships_private/tables/memberships_acl/table from pg

BEGIN;
DROP TABLE "vybez_memberships_private".memberships_acl;
COMMIT;  

