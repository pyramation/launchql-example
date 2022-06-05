-- Revert: schemas/vybez_memberships_public/tables/members/columns/actor_id/column from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".members DROP COLUMN actor_id;
COMMIT;  

