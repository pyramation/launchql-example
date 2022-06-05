-- Revert: schemas/vybez_memberships_public/tables/group_members/columns/id/column from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".group_members DROP COLUMN id;
COMMIT;  

