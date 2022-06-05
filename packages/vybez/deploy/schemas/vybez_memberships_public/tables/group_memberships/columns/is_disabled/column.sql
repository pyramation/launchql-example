-- Deploy: schemas/vybez_memberships_public/tables/group_memberships/columns/is_disabled/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/group_memberships/table

BEGIN;

ALTER TABLE "vybez_memberships_public".group_memberships ADD COLUMN is_disabled boolean;
COMMIT;
