-- Revert: schemas/vybez_memberships_public/tables/owner_grants/columns/is_grant/column from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".owner_grants DROP COLUMN is_grant;
COMMIT;  

