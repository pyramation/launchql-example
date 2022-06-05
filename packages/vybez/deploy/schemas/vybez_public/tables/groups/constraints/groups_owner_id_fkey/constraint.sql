-- Deploy: schemas/vybez_public/tables/groups/constraints/groups_owner_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/users/table
-- requires: schemas/vybez_public/tables/groups/table
-- requires: schemas/vybez_public/tables/users/columns/id/column
-- requires: schemas/vybez_public/tables/groups/columns/owner_id/column

BEGIN;

ALTER TABLE "vybez_public".groups 
    ADD CONSTRAINT groups_owner_id_fkey 
    FOREIGN KEY (owner_id)
    REFERENCES "vybez_public".users (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
