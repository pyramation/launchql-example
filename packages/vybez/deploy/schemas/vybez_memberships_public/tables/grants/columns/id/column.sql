-- Deploy: schemas/vybez_memberships_public/tables/grants/columns/id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/grants/table

BEGIN;

ALTER TABLE "vybez_memberships_public".grants ADD COLUMN id uuid;
COMMIT;
