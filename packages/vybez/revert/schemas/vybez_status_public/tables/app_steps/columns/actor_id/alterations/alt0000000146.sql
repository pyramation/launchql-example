-- Revert: schemas/vybez_status_public/tables/app_steps/columns/actor_id/alterations/alt0000000146 from pg

BEGIN;


ALTER TABLE "vybez_status_public".app_steps 
    ALTER COLUMN actor_id DROP DEFAULT;

COMMIT;  

