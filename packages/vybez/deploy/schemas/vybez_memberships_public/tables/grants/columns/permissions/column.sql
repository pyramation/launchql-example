-- Deploy: schemas/vybez_memberships_public/tables/grants/columns/permissions/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/grants/table

BEGIN;

ALTER TABLE "vybez_memberships_public".grants ADD COLUMN permissions bit(32);
COMMIT;
