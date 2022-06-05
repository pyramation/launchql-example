-- Revert: schemas/vybez_memberships_public/tables/grants/columns/is_grant/column from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".grants DROP COLUMN is_grant;
COMMIT;  

