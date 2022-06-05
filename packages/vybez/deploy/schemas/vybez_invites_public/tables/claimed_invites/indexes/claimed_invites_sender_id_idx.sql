-- Deploy: schemas/vybez_invites_public/tables/claimed_invites/indexes/claimed_invites_sender_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_invites_public/schema
-- requires: schemas/vybez_invites_public/tables/claimed_invites/table
-- requires: schemas/vybez_invites_public/tables/claimed_invites/columns/sender_id/column

BEGIN;
CREATE INDEX claimed_invites_sender_id_idx ON "vybez_invites_public".claimed_invites (sender_id);
COMMIT;
