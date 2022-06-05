-- Deploy: schemas/vybez_invites_public/tables/invites/columns/data/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_invites_public/schema
-- requires: schemas/vybez_invites_public/tables/invites/table

BEGIN;

ALTER TABLE "vybez_invites_public".invites ADD COLUMN data json;
COMMIT;
