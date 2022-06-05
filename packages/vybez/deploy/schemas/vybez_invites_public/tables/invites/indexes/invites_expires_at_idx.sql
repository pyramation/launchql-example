-- Deploy: schemas/vybez_invites_public/tables/invites/indexes/invites_expires_at_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_invites_public/schema
-- requires: schemas/vybez_invites_public/tables/invites/table
-- requires: schemas/vybez_invites_public/tables/invites/columns/expires_at/column

BEGIN;
CREATE INDEX invites_expires_at_idx ON "vybez_invites_public".invites (expires_at);
COMMIT;
