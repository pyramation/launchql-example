-- Deploy: schemas/vybez_invites_public/tables/member_invites/constraints/member_invites_receiver_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_invites_public/schema
-- requires: schemas/vybez_public/tables/users/table
-- requires: schemas/vybez_public/tables/users/columns/id/column
-- requires: schemas/vybez_invites_public/tables/member_invites/table
-- requires: schemas/vybez_invites_public/tables/member_invites/columns/receiver_id/column

BEGIN;

ALTER TABLE "vybez_invites_public".member_invites 
    ADD CONSTRAINT member_invites_receiver_id_fkey 
    FOREIGN KEY (receiver_id)
    REFERENCES "vybez_public".users (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;