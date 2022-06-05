-- Deploy: schemas/vybez_invites_public/tables/group_invites/columns/invite_token/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_invites_public/schema
-- requires: schemas/vybez_invites_public/tables/group_invites/table

BEGIN;

ALTER TABLE "vybez_invites_public".group_invites ADD COLUMN invite_token text;
COMMIT;
