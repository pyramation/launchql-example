-- Revert: schemas/vybez_memberships_public/tables/memberships/columns/is_banned/column from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".memberships DROP COLUMN is_banned;
COMMIT;  

