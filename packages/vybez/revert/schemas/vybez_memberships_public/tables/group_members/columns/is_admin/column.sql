-- Revert: schemas/vybez_memberships_public/tables/group_members/columns/is_admin/column from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".group_members DROP COLUMN is_admin;
COMMIT;  

