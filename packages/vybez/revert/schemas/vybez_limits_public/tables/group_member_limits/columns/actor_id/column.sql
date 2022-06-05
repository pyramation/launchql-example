-- Revert: schemas/vybez_limits_public/tables/group_member_limits/columns/actor_id/column from pg

BEGIN;


ALTER TABLE "vybez_limits_public".group_member_limits DROP COLUMN actor_id;
COMMIT;  

