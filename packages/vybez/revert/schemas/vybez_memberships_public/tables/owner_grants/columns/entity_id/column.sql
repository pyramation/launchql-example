-- Revert: schemas/vybez_memberships_public/tables/owner_grants/columns/entity_id/column from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".owner_grants DROP COLUMN entity_id;
COMMIT;  

