-- Revert: schemas/vybez_memberships_public/tables/group_members/table from pg

BEGIN;
DROP TABLE "vybez_memberships_public".group_members;
COMMIT;  

