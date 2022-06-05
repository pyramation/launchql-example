-- Deploy: schemas/vybez_memberships_public/tables/owner_grants/columns/is_grant/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/owner_grants/table

BEGIN;

ALTER TABLE "vybez_memberships_public".owner_grants ADD COLUMN is_grant boolean;
COMMIT;
