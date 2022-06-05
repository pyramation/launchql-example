-- Deploy: schemas/vybez_invites_public/tables/member_invites/indexes/member_invites_expires_at_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_invites_public/schema
-- requires: schemas/vybez_invites_public/tables/member_invites/table
-- requires: schemas/vybez_invites_public/tables/member_invites/columns/expires_at/column

BEGIN;
CREATE INDEX member_invites_expires_at_idx ON "vybez_invites_public".member_invites (expires_at);
COMMIT;
