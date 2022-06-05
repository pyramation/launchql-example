-- Revert: schemas/vybez_limits_public/tables/group_member_limits/columns/actor_id/alterations/alt0000000293 from pg

BEGIN;


ALTER TABLE "vybez_limits_public".group_member_limits 
    ALTER COLUMN actor_id DROP NOT NULL;


COMMIT;  

