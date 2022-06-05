-- Deploy: schemas/vybez_memberships_public/tables/admin_grants/columns/id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/admin_grants/table

BEGIN;

ALTER TABLE "vybez_memberships_public".admin_grants ADD COLUMN id uuid;
COMMIT;
