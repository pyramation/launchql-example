-- Revert: schemas/vybez_memberships_public/tables/group_memberships/columns/is_banned/column from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".group_memberships DROP COLUMN is_banned;
COMMIT;  

