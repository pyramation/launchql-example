-- Deploy: schemas/vybez_status_public/tables/app_achievements/constraints/app_achievements_actor_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_status_public/schema
-- requires: schemas/vybez_public/tables/users/table
-- requires: schemas/vybez_public/tables/users/columns/id/column
-- requires: schemas/vybez_status_public/tables/app_achievements/table
-- requires: schemas/vybez_status_public/tables/app_achievements/columns/actor_id/column

BEGIN;

ALTER TABLE "vybez_status_public".app_achievements 
    ADD CONSTRAINT app_achievements_actor_id_fkey 
    FOREIGN KEY (actor_id)
    REFERENCES "vybez_public".users (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
