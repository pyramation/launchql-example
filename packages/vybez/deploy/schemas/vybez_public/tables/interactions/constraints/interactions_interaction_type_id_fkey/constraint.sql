-- Deploy: schemas/vybez_public/tables/interactions/constraints/interactions_interaction_type_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/interactions/table
-- requires: schemas/vybez_public/tables/interaction_types/table
-- requires: schemas/vybez_public/tables/interaction_types/columns/id/column
-- requires: schemas/vybez_public/tables/interactions/columns/interaction_type_id/column

BEGIN;

ALTER TABLE "vybez_public".interactions 
    ADD CONSTRAINT interactions_interaction_type_id_fkey 
    FOREIGN KEY (interaction_type_id)
    REFERENCES "vybez_public".interaction_types (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
