-- Revert: schemas/vybez_memberships_public/tables/group_memberships/columns/is_disabled/column from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".group_memberships DROP COLUMN is_disabled;
COMMIT;  

