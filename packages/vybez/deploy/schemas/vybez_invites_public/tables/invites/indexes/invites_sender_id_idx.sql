-- Deploy: schemas/vybez_invites_public/tables/invites/indexes/invites_sender_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_invites_public/schema
-- requires: schemas/vybez_invites_public/tables/invites/table
-- requires: schemas/vybez_invites_public/tables/invites/columns/sender_id/column

BEGIN;
CREATE INDEX invites_sender_id_idx ON "vybez_invites_public".invites (sender_id);
COMMIT;
