-- Deploy: schemas/vybez_status_public/tables/app_steps/indexes/app_steps_actor_id_name_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_status_public/schema
-- requires: schemas/vybez_status_public/tables/app_steps/table
-- requires: schemas/vybez_status_public/tables/app_steps/columns/name/column
-- requires: schemas/vybez_status_public/tables/app_steps/columns/actor_id/column

BEGIN;
CREATE INDEX app_steps_actor_id_name_idx ON "vybez_status_public".app_steps (actor_id, name);
COMMIT;
