-- Revert: schemas/vybez_memberships_public/tables/group_owner_grants/table from pg

BEGIN;
DROP TABLE "vybez_memberships_public".group_owner_grants;
COMMIT;  

