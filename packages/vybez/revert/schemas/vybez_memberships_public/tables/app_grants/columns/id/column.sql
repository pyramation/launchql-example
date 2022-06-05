-- Revert: schemas/vybez_memberships_public/tables/app_grants/columns/id/column from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".app_grants DROP COLUMN id;
COMMIT;  

