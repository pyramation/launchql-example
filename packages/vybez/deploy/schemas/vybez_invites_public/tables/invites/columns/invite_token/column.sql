-- Deploy: schemas/vybez_invites_public/tables/invites/columns/invite_token/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_invites_public/schema
-- requires: schemas/vybez_invites_public/tables/invites/table

BEGIN;

ALTER TABLE "vybez_invites_public".invites ADD COLUMN invite_token text;
COMMIT;
