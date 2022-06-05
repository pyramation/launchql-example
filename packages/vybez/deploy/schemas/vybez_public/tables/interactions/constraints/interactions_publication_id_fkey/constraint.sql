-- Deploy: schemas/vybez_public/tables/interactions/constraints/interactions_publication_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/interactions/table
-- requires: schemas/vybez_public/tables/publications/table
-- requires: schemas/vybez_public/tables/publications/columns/id/column
-- requires: schemas/vybez_public/tables/interactions/columns/publication_id/column

BEGIN;

ALTER TABLE "vybez_public".interactions 
    ADD CONSTRAINT interactions_publication_id_fkey 
    FOREIGN KEY (publication_id)
    REFERENCES "vybez_public".publications (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
