-- Revert: schemas/vybez_memberships_public/tables/group_memberships/columns/actor_id/column from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".group_memberships DROP COLUMN actor_id;
COMMIT;  

