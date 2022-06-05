-- Revert: schemas/vybez_memberships_public/tables/admin_grants/columns/entity_id/column from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".admin_grants DROP COLUMN entity_id;
COMMIT;  

