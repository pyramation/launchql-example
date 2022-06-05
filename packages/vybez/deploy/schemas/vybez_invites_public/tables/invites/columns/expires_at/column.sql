-- Deploy: schemas/vybez_invites_public/tables/invites/columns/expires_at/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_invites_public/schema
-- requires: schemas/vybez_invites_public/tables/invites/table

BEGIN;

ALTER TABLE "vybez_invites_public".invites ADD COLUMN expires_at timestamptz;
COMMIT;
