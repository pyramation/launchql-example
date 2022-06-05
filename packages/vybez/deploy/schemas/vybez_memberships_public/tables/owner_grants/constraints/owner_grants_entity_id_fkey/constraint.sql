-- Deploy: schemas/vybez_memberships_public/tables/owner_grants/constraints/owner_grants_entity_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_public/tables/users/table
-- requires: schemas/vybez_public/tables/users/columns/id/column
-- requires: schemas/vybez_memberships_public/tables/owner_grants/table
-- requires: schemas/vybez_memberships_public/tables/owner_grants/columns/entity_id/column

BEGIN;

ALTER TABLE "vybez_memberships_public".owner_grants 
    ADD CONSTRAINT owner_grants_entity_id_fkey 
    FOREIGN KEY (entity_id)
    REFERENCES "vybez_public".users (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
