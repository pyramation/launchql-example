-- Revert: schemas/vybez_memberships_public/tables/app_memberships/columns/is_admin/column from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".app_memberships DROP COLUMN is_admin;
COMMIT;  

