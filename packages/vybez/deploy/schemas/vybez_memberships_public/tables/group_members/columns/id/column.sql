-- Deploy: schemas/vybez_memberships_public/tables/group_members/columns/id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/group_members/table

BEGIN;

ALTER TABLE "vybez_memberships_public".group_members ADD COLUMN id uuid;
COMMIT;
