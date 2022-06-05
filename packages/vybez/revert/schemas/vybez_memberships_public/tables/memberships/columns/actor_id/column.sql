-- Revert: schemas/vybez_memberships_public/tables/memberships/columns/actor_id/column from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".memberships DROP COLUMN actor_id;
COMMIT;  

