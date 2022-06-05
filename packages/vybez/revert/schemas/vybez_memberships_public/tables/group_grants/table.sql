-- Revert: schemas/vybez_memberships_public/tables/group_grants/table from pg

BEGIN;
DROP TABLE "vybez_memberships_public".group_grants;
COMMIT;  

