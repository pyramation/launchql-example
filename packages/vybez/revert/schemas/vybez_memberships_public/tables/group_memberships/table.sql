-- Revert: schemas/vybez_memberships_public/tables/group_memberships/table from pg

BEGIN;
DROP TABLE "vybez_memberships_public".group_memberships;
COMMIT;  

