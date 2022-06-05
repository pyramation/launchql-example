-- Revert: schemas/vybez_memberships_public/tables/group_owner_grants/columns/id/column from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".group_owner_grants DROP COLUMN id;
COMMIT;  

