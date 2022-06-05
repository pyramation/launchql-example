-- Deploy: schemas/vybez_limits_public/tables/app_limits/constraints/app_limits_actor_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_limits_public/schema
-- requires: schemas/vybez_public/tables/users/table
-- requires: schemas/vybez_limits_public/tables/app_limits/table
-- requires: schemas/vybez_public/tables/users/columns/id/column
-- requires: schemas/vybez_limits_public/tables/app_limits/columns/actor_id/column

BEGIN;

ALTER TABLE "vybez_limits_public".app_limits 
    ADD CONSTRAINT app_limits_actor_id_fkey 
    FOREIGN KEY (actor_id)
    REFERENCES "vybez_public".users (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
