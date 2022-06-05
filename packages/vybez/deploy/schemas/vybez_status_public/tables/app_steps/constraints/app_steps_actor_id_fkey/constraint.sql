-- Deploy: schemas/vybez_status_public/tables/app_steps/constraints/app_steps_actor_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_status_public/schema
-- requires: schemas/vybez_public/tables/users/table
-- requires: schemas/vybez_status_public/tables/app_steps/table
-- requires: schemas/vybez_public/tables/users/columns/id/column
-- requires: schemas/vybez_status_public/tables/app_steps/columns/actor_id/column

BEGIN;

ALTER TABLE "vybez_status_public".app_steps 
    ADD CONSTRAINT app_steps_actor_id_fkey 
    FOREIGN KEY (actor_id)
    REFERENCES "vybez_public".users (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
