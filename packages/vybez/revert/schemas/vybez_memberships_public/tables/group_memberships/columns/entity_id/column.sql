-- Revert: schemas/vybez_memberships_public/tables/group_memberships/columns/entity_id/column from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".group_memberships DROP COLUMN entity_id;
COMMIT;  

