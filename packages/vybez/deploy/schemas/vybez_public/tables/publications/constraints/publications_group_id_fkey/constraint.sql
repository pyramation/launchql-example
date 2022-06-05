-- Deploy: schemas/vybez_public/tables/publications/constraints/publications_group_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/groups/table
-- requires: schemas/vybez_public/tables/publications/table
-- requires: schemas/vybez_public/tables/groups/columns/id/column
-- requires: schemas/vybez_public/tables/publications/columns/group_id/column

BEGIN;

ALTER TABLE "vybez_public".publications 
    ADD CONSTRAINT publications_group_id_fkey 
    FOREIGN KEY (group_id)
    REFERENCES "vybez_public".groups (id)
    ON DELETE SET NULL
    ON UPDATE NO ACTION;
COMMIT;
