-- Revert: schemas/vybez_memberships_public/tables/memberships/columns/entity_id/column from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".memberships DROP COLUMN entity_id;
COMMIT;  

