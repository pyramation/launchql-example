-- Revert: schemas/vybez_memberships_public/tables/app_admin_grants/columns/is_grant/column from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".app_admin_grants DROP COLUMN is_grant;
COMMIT;  

