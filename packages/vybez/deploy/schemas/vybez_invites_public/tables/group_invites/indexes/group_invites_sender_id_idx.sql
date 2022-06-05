-- Deploy: schemas/vybez_invites_public/tables/group_invites/indexes/group_invites_sender_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_invites_public/schema
-- requires: schemas/vybez_invites_public/tables/group_invites/table
-- requires: schemas/vybez_invites_public/tables/group_invites/columns/sender_id/column

BEGIN;
CREATE INDEX group_invites_sender_id_idx ON "vybez_invites_public".group_invites (sender_id);
COMMIT;
