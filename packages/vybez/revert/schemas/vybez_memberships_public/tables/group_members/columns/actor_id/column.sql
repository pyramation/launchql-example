-- Revert: schemas/vybez_memberships_public/tables/group_members/columns/actor_id/column from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".group_members DROP COLUMN actor_id;
COMMIT;  

