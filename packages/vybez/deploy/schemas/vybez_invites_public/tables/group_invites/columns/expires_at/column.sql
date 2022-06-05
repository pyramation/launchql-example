-- Deploy: schemas/vybez_invites_public/tables/group_invites/columns/expires_at/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_invites_public/schema
-- requires: schemas/vybez_invites_public/tables/group_invites/table

BEGIN;

ALTER TABLE "vybez_invites_public".group_invites ADD COLUMN expires_at timestamptz;
COMMIT;
