-- Revert: schemas/vybez_status_public/tables/app_achievements/columns/actor_id/alterations/alt0000000154 from pg

BEGIN;


ALTER TABLE "vybez_status_public".app_achievements 
    ALTER COLUMN actor_id DROP NOT NULL;


COMMIT;  

