-- Deploy: schemas/vybez_invites_public/tables/claimed_invites/constraints/claimed_invites_receiver_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_invites_public/schema
-- requires: schemas/vybez_public/tables/users/table
-- requires: schemas/vybez_public/tables/users/columns/id/column
-- requires: schemas/vybez_invites_public/tables/claimed_invites/table
-- requires: schemas/vybez_invites_public/tables/claimed_invites/columns/receiver_id/column

BEGIN;

ALTER TABLE "vybez_invites_public".claimed_invites 
    ADD CONSTRAINT claimed_invites_receiver_id_fkey 
    FOREIGN KEY (receiver_id)
    REFERENCES "vybez_public".users (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
