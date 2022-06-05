-- Revert: schemas/vybez_status_public/tables/app_steps/indexes/app_steps_actor_id_name_idx from pg

BEGIN;
DROP INDEX "vybez_status_public".app_steps_actor_id_name_idx;
COMMIT;  

