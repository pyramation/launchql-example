-- Revert: schemas/vybez_memberships_public/tables/group_grants/columns/entity_id/column from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".group_grants DROP COLUMN entity_id;
COMMIT;  

