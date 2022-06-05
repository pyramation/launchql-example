-- Deploy: schemas/vybez_memberships_public/tables/group_owner_grants/constraints/group_owner_grants_grantor_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_public/tables/users/table
-- requires: schemas/vybez_public/tables/users/columns/id/column
-- requires: schemas/vybez_memberships_public/tables/group_owner_grants/table
-- requires: schemas/vybez_memberships_public/tables/group_owner_grants/columns/grantor_id/column

BEGIN;

ALTER TABLE "vybez_memberships_public".group_owner_grants 
    ADD CONSTRAINT group_owner_grants_grantor_id_fkey 
    FOREIGN KEY (grantor_id)
    REFERENCES "vybez_public".users (id)
    ON DELETE SET NULL
    ON UPDATE NO ACTION;
COMMIT;
