-- Revert: schemas/vybez_memberships_public/tables/app_memberships/columns/is_verified/column from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".app_memberships DROP COLUMN is_verified;
COMMIT;  

