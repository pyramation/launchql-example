-- Deploy: schemas/vybez_memberships_public/tables/group_memberships/columns/granted/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/group_memberships/table

BEGIN;

ALTER TABLE "vybez_memberships_public".group_memberships ADD COLUMN granted bit(32);
COMMIT;
