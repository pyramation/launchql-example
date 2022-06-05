-- Revert: schemas/vybez_memberships_public/tables/group_admin_grants/table from pg

BEGIN;
DROP TABLE "vybez_memberships_public".group_admin_grants;
COMMIT;  

