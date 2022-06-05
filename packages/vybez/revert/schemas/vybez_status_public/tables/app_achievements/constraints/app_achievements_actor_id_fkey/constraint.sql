-- Revert: schemas/vybez_status_public/tables/app_achievements/constraints/app_achievements_actor_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "vybez_status_public".app_achievements 
    DROP CONSTRAINT app_achievements_actor_id_fkey;

COMMIT;  

