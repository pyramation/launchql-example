-- Deploy: schemas/vybez_public/tables/emails/constraints/emails_owner_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/users/table
-- requires: schemas/vybez_public/tables/emails/table
-- requires: schemas/vybez_public/tables/users/columns/id/column
-- requires: schemas/vybez_public/tables/emails/columns/owner_id/column

BEGIN;

ALTER TABLE "vybez_public".emails 
    ADD CONSTRAINT emails_owner_id_fkey 
    FOREIGN KEY (owner_id)
    REFERENCES "vybez_public".users (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
