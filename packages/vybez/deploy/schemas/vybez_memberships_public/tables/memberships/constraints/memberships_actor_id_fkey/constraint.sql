-- Deploy: schemas/vybez_memberships_public/tables/memberships/constraints/memberships_actor_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_public/tables/users/table
-- requires: schemas/vybez_public/tables/users/columns/id/column
-- requires: schemas/vybez_memberships_public/tables/memberships/table
-- requires: schemas/vybez_memberships_public/tables/memberships/columns/actor_id/column

BEGIN;

ALTER TABLE "vybez_memberships_public".memberships 
    ADD CONSTRAINT memberships_actor_id_fkey 
    FOREIGN KEY (actor_id)
    REFERENCES "vybez_public".users (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
