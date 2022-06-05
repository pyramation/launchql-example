-- Revert: schemas/vybez_memberships_public/tables/group_memberships/columns/is_approved/column from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".group_memberships DROP COLUMN is_approved;
COMMIT;  

