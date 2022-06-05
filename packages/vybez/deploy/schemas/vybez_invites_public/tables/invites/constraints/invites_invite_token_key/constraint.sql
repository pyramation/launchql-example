-- Deploy: schemas/vybez_invites_public/tables/invites/constraints/invites_invite_token_key/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_invites_public/schema
-- requires: schemas/vybez_invites_public/tables/invites/table

BEGIN;

ALTER TABLE "vybez_invites_public".invites
    ADD CONSTRAINT invites_invite_token_key UNIQUE (invite_token);
COMMIT;
