-- Deploy: schemas/vybez_public/tables/interactions/constraints/interactions_user_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/users/table
-- requires: schemas/vybez_public/tables/interactions/table
-- requires: schemas/vybez_public/tables/users/columns/id/column
-- requires: schemas/vybez_public/tables/interactions/columns/user_id/column

BEGIN;

ALTER TABLE "vybez_public".interactions 
    ADD CONSTRAINT interactions_user_id_fkey 
    FOREIGN KEY (user_id)
    REFERENCES "vybez_public".users (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
