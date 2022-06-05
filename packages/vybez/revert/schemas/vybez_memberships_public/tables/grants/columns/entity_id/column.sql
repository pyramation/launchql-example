-- Revert: schemas/vybez_memberships_public/tables/grants/columns/entity_id/column from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".grants DROP COLUMN entity_id;
COMMIT;  

